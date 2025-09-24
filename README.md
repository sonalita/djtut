# Django tutorial

from [django girls](https://tutorial.djangogirls.org/en/)
A slightly modified study, using a more industry standard config.
 
## Prerequisites
Built using Python 3.12. This version is based on `uv` and `ruff` so those most be installed.
 
## Initialisation (#01-init)

- project tag "init"
- Used the `./scripts/djangoinit.sh djtut blog` to create the project and test that the Django welcome page is rendered. The script is well commented and performs:
- project directory creation
- creates a suitable .gitignore and commits it.
- `uv` initialisation
- Adds `django` dependency
- Creates django project using `config` as the Django config directory
- Adds the `blog` application
- Initialises the `SQLite` database
- Commits the initial project
- Starts the development server.

## First model (#02-post-model)
- Configured regional settings
- Create `Post` model, add it to admin.
- Create and run migrations `uv run manage.py makemigrations blog` `uv run manage.py migrate blog`
- Create superuser with `uv run manage.py createsuperuser` (Hh...dj)
- use http://localhost:8000/admin to create 6 posts, some published, some not.

## First static view (#03-static-view)
- Added urls
- created a view
- Created the view template. **Note:** the app/templates/app structure is recommended as Django flattens all templates into one virtual namespace, so this structure prevents naming conflicts between apps.

## ORM and styling (#04-orm)
 - See the [tutorial page](https://tutorial.djangogirls.org/en/django_orm/) for using `uv run manage.py shell` and experimenting with QuerySets.
 - Added dynamic rendering of model
 - Added bootstrap - I used a Catppuccin color scheme and separated out the css more than in the tutorial.

## Extending templates (#05-template-extension)
 - Learn how to make a base page template and include blocks from html fragments.2
  
## Adding detail page (#06-detail-page)
 - learned how to add a detaul page, including generating a url from the master html.
 - Add a new URL route
 - Add a new details view
 - Add a the page_detail template
 - Learned about `uv run manage.py collectstatics` for deploying to a real server.a