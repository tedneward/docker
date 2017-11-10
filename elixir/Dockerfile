FROM elixir
MAINTAINER Ted Neward <ted@tedneward.com>

RUN groupadd --gid 1000 elixir \
  && useradd --uid 1000 --gid elixir --shell /bin/bash --create-home elixir

RUN chown -R elixir:elixir /usr/local

USER elixir
WORKDIR /home/elixir

CMD ["/bin/bash"]