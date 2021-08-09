#!/bin/bash
set -e

echo "Setting up pg temp dir"
mkdir tmp tmp/pg
sudo chown -R 1001 tmp/pg/

docker-compose build
docker-compose up -d
docker-compose exec server bundle
docker-compose exec server rails webpacker:install
docker-compose exec server rails db:create db:migrate db:seed
echo "Project ready"
echo "Run test: docker-compose exec server rails test"
echo "Run server: docker-compose exec server rails server"