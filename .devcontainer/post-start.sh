set -e

echo '🏗️ Setting up project...'
poetry install --no-root

source ./.venv/bin/activate && cd ./dbt && dbt deps

echo 'Finished setup! Happy coding! 🚀'