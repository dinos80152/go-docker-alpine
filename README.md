# golang-docker-alpine

## Introduction

A template for deploying a **minimize golang binary docker image**, which size only about 10 MB.

This example uses Travis CI and Heroku to make a [demo](https://golang-docker-alpine.herokuapp.com/).

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

* [Container Registry and Runtime, Heroku Dev Center](https://devcenter.heroku.com/articles/container-registry-and-runtime)
* [Pushing a Docker Image to a Registry, Travis CI](https://docs.travis-ci.com/user/docker/#Pushing-a-Docker-Image-to-a-Registry)
* [Docker Documentation](https://docs.docker.com/)
* [LoadLocation, The Go Programming Language](https://golang.org/pkg/time/#LoadLocation)