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
## Restart Existing Container

To list containers, open a terminal and run:

```
docker ps -a
```

Find the container you wish to restart:

```
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                     PORTS               NAMES
30193ed97eec        mysql:8             "docker-entrypoint.s…"   3 weeks ago         Exited (137) 3 weeks ago                       mysql8
```

Use the name to restart the container:

```
docker start mysql8
```

## Run Commands Inside Container

To run commands inside the container, open a terminal and run:

```
docker exec -it mysql8 bash
```

Once inside the container, start a MySQL shell with:

```
mysql -h localhost -P 3306 -uroot -pmy-secret-pw
```
