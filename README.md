# jsonschema-docker

dockerized version of https://github.com/santhosh-tekuri/jsonschema

See project also on [dockerhub](https://hub.docker.com/repository/docker/andiikaa/jsonschema/general)

## terminal usage

```bash
docker run --rm -it -v $(pwd):/app andiikaa/jsonschema schema.json some.yaml
```

## CI usage

```yaml
stages:
  - lint

validate-yaml:
  stage: lint
  image:
    name: andiikaa/jsonschema
    entrypoint: ["/bin/sh", "-c"]
  script:
    - jv schema.json 
```