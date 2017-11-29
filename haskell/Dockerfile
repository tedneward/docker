FROM ubuntu
MAINTAINER Ted Neward <ted@tedneward.com>

# netbase, ca-certificates appears to be needed for stack upgrade
# build-essential contains the usual build stuff, including xz which stack also needs
RUN apt-get update && \
  apt-get install -y haskell-platform netbase ca-certificates build-essential git wget && \
  wget -qO- https://get.haskellstack.org/ | sh

RUN groupadd --gid 1000 ghc \
  && useradd --uid 1000 --gid ghc --shell /bin/bash --create-home ghc \
  && chown -R ghc:ghc /usr/local

USER ghc
WORKDIR /home/ghc

ENTRYPOINT ["/bin/bash"]
