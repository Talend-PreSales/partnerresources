# Docker

Using Docker allows you to quickly spin up images for demo purposes. In this guide, we'll create and run a MySQL 8 database image.

## Installation

Download and install from [docker.com](https://docs.docker.com/get-docker/).

## Pull Image

Open a terminal and run:

```
docker pull mysql:8
```

This will pull the MySQL 8 image to your environment.

[Reference](https://docs.docker.com/engine/reference/commandline/pull/)

## Run Image & Start MySQL Server Instance

To run the image, open a terminal and run:

```
docker run --name mysql8 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=my-secret-pw -e MYSQL_DATABASE=my-db -d mysql:8
```

Confirm the container is running:

```
docker container ls
```

See more information on the MySQL image in [Docker Hub](https://hub.docker.com/_/mysql)

## Connect to MySQL

You now have a running MySQL 8 environment.

## Stop MySQL

You can stop the container by running

```
docker container kill mysql8
```
