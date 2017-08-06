[![Build Status](https://travis-ci.org/jurassic-park-hackers/elixir_katas.svg?branch=master)](https://travis-ci.org/jurassic-park-hackers/elixir_katas)

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
docker build -t elixir_katas .
```

## Running tests in image Docker
```bash
docker run --rm -t elixir_katas mix test
```

## Access image docker
```bash
docker run --rm -it -t elixir_katas /bin/sh
```
