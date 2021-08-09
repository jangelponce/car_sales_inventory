# Car Sales Inventory

## Requirements
* docker ~> 19.03.13
* docker-compose ~> 1.27.4

## Instructions
Inside the project I added the setup.sh script that uses docker-compose to build the images, turns up the project and runs
* bundle
* rails webpacker:install
* rails db:create db:migrate db:seed

To get the project properly configured, just run the following in the project's root dir
```
./setup.sh
```

To run tests
```
docker-compose exec server rails test
```

To run server
```
docker-compose exec server rails server
```

To get into the container and run commands directly
```
docker-compose exec server /bin/bash
```

## Access
### User
- email: user@test.com
- pass: P@ssw0rd
### Admin
- email: admin@test.com
- pass: P@ssw0rd