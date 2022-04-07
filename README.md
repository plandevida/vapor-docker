# Vapor for Docker

The [base image](https://hub.docker.com/repository/docker/plandevida/vapor-toolbox) is build on Ubuntu 20.04 with [Swift](https://github.com/apple/swift) 5.6 and [Vapor toolbox](https://github.com/vapor/toolbox)

## Simple setup
You can use the base image to get a simple setup with Vapor & Docker up and running.
Go to your projects root directory and run this command

`docker run --rm -ti -v $(pwd):/vapor -p 8080:8080 plandevida/vapor-toolbox:latest`

This command will start a container with a mounted directory and build and run the source inside the container. You can access to your app using https://localhost:8080

**this image doesn't have MySQL, PGSQL or SQLite**

