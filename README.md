# Car Sales Inventory

## Requirements
* docker ~> 19.03.13
* docker-compose ~> 1.27.4

## Instructions
Inside the project I added the setup.sh script that uses docker-compose to build the images, turns up the project and runs
* bundle
* rails webpacker:install
* rails db:create db:migrate db:seed

Just run the following in the project's root dir
```
./setup.sh
```