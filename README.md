# Rails-docker-quick

Excelente base for start a rails application for development environment, use image based on Ruby Alpine and contains Redis, MYSQL and PostgreSQL images for connect your app, for default use PostgreSQL.

## Check it out!

```sh
git clone git@github.com:jericu/rails-docker-quick.git
cd rails-docker-quick
```

Build the project:

```sh
docker-compose build
docker-compose run web rake db:create db:migrate
docker-compose up -d 
```

check the application [http://0.0.0.0:3000/][local] 

## Enjoy and start to development

[local]: <http://0.0.0.0:3000/>