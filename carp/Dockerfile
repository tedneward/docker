FROM tedneward/haskell
MAINTAINER Ted Neward <ted@tedneward.com>

RUN git clone https://github.com/carp-lang/Carp.git Carp.git && \
  cd Carp.git && \
  stack setup && \
  stack upgrade --install-ghc && \
  stack build && \
  stack install

ENV CARP_DIR=/home/ghc/Carp.git
ENV PATH=$CARP_DIR/bin:$PATH

USER root
RUN mkdir /home/carp && chown ghc:ghc /home/carp

USER ghc
WORKDIR /home/carp
VOLUME ["/home/carp/work"]

ENTRYPOINT ["/bin/bash"]
