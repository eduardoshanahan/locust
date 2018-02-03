# Docker image with Locust for load testing, based in Python 2.7

## Building

```
docker build . -t eduardoshanahan/locust:latest
```

You can also use the build.sh file to prepare the 'latest' version also.

## Running an interactive test

```
docker run --rm -it eduardoshanahan/locust:latest
```

Or with Docker Compose

```
docker-compose run --rm shell
```

## Building an image in Docker Hub

If for any reason the tagged build fails, you can fire a fresh one running

```
./build_image.sh
```

## Development

To send the commits to the remote server, you can use the script

```
./save.sh
```

which will also create a new tag if the version is updated.
