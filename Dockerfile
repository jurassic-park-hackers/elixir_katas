FROM elixir:1.5.1-alpine

ENV HOME=/usr/src/app/

# Install Hex
RUN mix local.hex --force && \
    mix local.rebar --force

# Move source
ADD . ${HOME}

WORKDIR ${HOME}

# Run deps
RUN mix do deps.get, deps.compile