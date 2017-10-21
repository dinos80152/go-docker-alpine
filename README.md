# golang-docker-alpine

![Travis CI Badge](https://travis-ci.org/dinos80152/golang-docker-alpine.svg?branch=master)

## Introduction

A template for deploying a **minimize golang binary docker image**, which size only about 10 MB.

This example uses Travis CI and Heroku to make a [demo](https://golang-docker-alpine.herokuapp.com/).

### Docker version higher than 17.05

Use multi-stage builds, the example [Dockerfile](./Dockerfile)

### Docker version lower than 17.05

Make two docker file

* DockerSrc for building binary
* DockerBin for execution

See the example in [old folder](./old)

## Comparison

| Image             | Size    |
| ----------------- | ------- |
| source code image | 282 MB  |
| binary image      | 10.5 MB |


## Warning

Function **time.LoadLocation() will panic in binary image**, because of

> LoadLocation looks in the directory or uncompressed zip file named by the ZONEINFO environment variable, if any, then looks in known installation locations on Unix systems, and finally looks in $GOROOT/lib/time/zoneinfo.zip.

You have to set $GOROOT and copy zoneinfo.zip manually.

## Reference

* [Use multi-stage builds, docker docs](https://docs.docker.com/engine/userguide/eng-image/multistage-build/)
* [Container Registry and Runtime, Heroku Dev Center](https://devcenter.heroku.com/articles/container-registry-and-runtime)
* [Pushing a Docker Image to a Registry, Travis CI](https://docs.travis-ci.com/user/docker/#Pushing-a-Docker-Image-to-a-Registry)
* [Docker Documentation](https://docs.docker.com/)
* [LoadLocation, The Go Programming Language](https://golang.org/pkg/time/#LoadLocation)