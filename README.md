# apib2swagger-docker
[apib2swagger](https://github.com/kminami/apib2swagger) running in a Docker container.

# How to build from Dockerfile

```bash
$ docker build -t apib2swagger:lastest . --build-arg VERSION=1.9.2
```

optionnal --build-arg, default is `latest`

# How to use

Convert [API Blueprint][] to [Swagger][] specification.

**note** the working directory is `/docs`

```bash
$ docker run -it --rm -v $(pwd):/docs apib2swagger:lastest -i blueprint.apib -o swagger.json
```

[API Blueprint]: https://apiblueprint.org/ "API Blueprint"
[Swagger]: http://swagger.io/ "Swagger"
