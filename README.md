# LMS_C_ONE
This project managed all microservce with different-2 main repositry like (Identity, Profile, Program, Admission etc)

Good practice
# 1. Before commit your code make sure all Test Cases or Linting must be pass. You can check with below command
## For checking test in local machine
docker-compose run --rm app sh -c "python manage.py test"
## For checking Linting in local machine
docker-compose run --rm app sh -c "flake8"
## For checking Tests and Linting in local machine
docker-compose run --rm app sh -c "python manage.py test && flake8"


Setup git account project

# add file requirements.txt
# add file Dockerfile
# add file .dockerignore
# create app folder

# Run below  command
docker build .

# add file docker-compose.yml

# Run below command
docker-compose build

# add file .flake8

# Run below command
docker-compose run --rm app sh -c "flake8"

# add django project via below command
docker-compose run --rm app sh -c "django-admin startproject app ."

# Run local server via below command
docker-compose up

# Rebuild app
docker-compose down
docker-compose build

# Run Test cases command
docker-compose run --rm app sh -c "python manage.py test"
docker-compose run --rm app sh -c "python manage.py test && flake8"
docker-compose run --rm app sh -c "python manage.py show_urls"

# Run special command
docker-compose run --rm app sh -c "python manage.py wait_for_db"
docker-compose run --rm app sh -c "python manage.py wait_for_db && flake8"

# For Make migrations
docker-compose run --rm app sh -c "python manage.py makemigrations"
# for migrate
docker-compose run --rm app sh -c "python manage.py wait_for_db && python manage.py migrate"
# Docker volume space
docker volume ls
docker volume rm recipe-app-api_dev-db-data

# Cerate super admin
docker-compose run --rm app sh -c "python manage.py createsuperuser"

docker-compose run --rm app sh -c "python manage.py show_urls"

docker-compose run --rm app sh -c "python manage.py collectstatic"

docker-compose run --rm app sh -c "python -m pip install Pillow"

docker build -t abhyas:1.1 .
docker images
docker run -d -p 80:80 abhyas:1.1
docker run -p 80:80 abhyas:1.1