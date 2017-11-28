FROM tedneward/haskell
MAINTAINER Ted Neward <ted@tedneward.com>

USER root
RUN apt-get install -y git

USER ghc
RUN mkdir /home/ghc/carp && \
  git clone https://github.com/carp-lang/Carp.git Carp.git && \
  stack build && \
  stack install

RUN mkdir /home/carp && chown ghc:ghc /home/carp

USER ghc
WORKDIR /home/carp
VOLUME ["/home/carp/work"]

ENTRYPOINT ["/bin/bash"]
