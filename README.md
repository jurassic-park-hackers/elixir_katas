# Jurassic

## Getting started

```bash
mix deps.get
```

## Running tests

```bash
mix test
mix test.watch
```

## Build image Docker
```bash
docker build -t elixir:1.5.1-alpine .
```

## Running tests in image Docker
```bash
docker run --rm -t elixir:1.5.1-alpine mix test
```

## Access image docker
```bash
docker run --rm -it -t elixir:1.5.1-alpine /bin/sh
```
