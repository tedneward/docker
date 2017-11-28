FROM ubuntu
MAINTAINER Ted Neward <ted@tedneward.com>

RUN apt-get update && \
  apt-get install -y haskell-platform haskell-stack && \
  stack upgrade

RUN groupadd --gid 1000 ghc \
  && useradd --uid 1000 --gid ghc --shell /bin/bash --create-home ghc \
  && chown -R ghc:ghc /usr/local

USER ghc
WORKDIR /home/ghc

ENTRYPOINT ["/bin/bash"]
