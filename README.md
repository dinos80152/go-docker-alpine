# go-docker-alpine

## Introduction

A template for building a **minimize golang binary docker image**, which size only about 10 MB.

This example uses Travis CI and Heroku to make a [demo](https://go-docker-alpine.herokuapp.com/).

## Comparison

| Image             | Size    |
| ----------------- | ------- |
| source code image | 282 MB  |
| binary image      | 10.5 MB |

## Reference

* [Container Registry and Runtime, Heroku Dev Center](https://devcenter.heroku.com/articles/container-registry-and-runtime)
* [Pushing a Docker Image to a Registry, Travis CI](https://docs.travis-ci.com/user/docker/#Pushing-a-Docker-Image-to-a-Registry)
* [Docker Documentation](https://docs.docker.com/)