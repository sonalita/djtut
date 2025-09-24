# Django tutorial

from [django girls](https://tutorial.djangogirls.org/en/)
A slightly modified study, using a more industry standard config.
 
## Prerequisites
Built using Python 3.12. This version is based on `uv` and `ruff` so those most be installed.
 
## Initialisation

- project tag "init"
- Used the `./scripts/djangoinit.sh djtut blog` to create the project and test that the Django welcome page is rendered. The script is well commented and performs:
- project directory creation
- creates a suitable .gitignore and commits it.
- `uv` initialisation
- Adds `django` dependency
- Creates django project using `config` as the Django config directory
- Adds the `blog` applcation
- Initialises the `SQLite` database
- Commits the initial project
- Starts the development server.