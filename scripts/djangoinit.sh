#!/usr/bin/env bash
set -euo pipefail

REPOS="$HOME/repos"
PROJECT="$1"  # repo / project folder name
APP="$2"      # first app name

cd "$REPOS"

# create repo with uv (no --package, so no src/ baggage)
uv init "$PROJECT"

cd "$PROJECT"

# add Django
uv add django

# start Django project with neutral "config" package
uv run django-admin startproject config .

# create the app
uv run python manage.py startapp "$APP"

# Create a better .gitignore
cat > .gitignore << 'EOF'
# ---- Virtual env / uv ----
.venv/
.uv/

# ---- Django ----
db.sqlite3
*.sqlite3-journal
*.log
*.pot
*.py,cover

# Media/static (if you ever add user-uploaded files)
media/
staticfiles/

# ---- IDE/editor junk ----
.vscode/
.idea/
*.swp
*.swo
.DS_Store

# ---- Testing ----
.coverage
pytest_cache/
htmlcov/

# ---- OS / misc ----
Thumbs.db
EOF

# Add .gitignore first, then run migrations
git add .gitignore
git commit -m "Add .gitignore"

# run initial migrate (after .gitignore is in place)
uv run python manage.py migrate

# final commit with everything except ignored files
git add .
git commit -m "Initial Django project ($PROJECT) with app $APP"

echo
echo "✅ Project $PROJECT with app $APP created and committed."
echo "Browse to http://127.0.0.1:8000 to see the Django welcome page."
echo "Starting dev server..."
uv run python manage.py runserver &
