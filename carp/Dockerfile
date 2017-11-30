FROM haskell:8.0.2
MAINTAINER Ted Neward <ted@tedneward.com>

# We need the C/C++ toolchain
RUN apt-get update && apt-get install -y build-essential clang llvm

RUN mkdir /home/carp && cd /home/carp && \
  git clone https://github.com/carp-lang/Carp.git Carp.git && \
  cd Carp.git && \
  stack build && \
  stack install

ENV PATH=~/.local/bin:$PATH
ENV CARP_DIR=/home/carp/Carp.git

WORKDIR /home/carp
VOLUME ["/home/carp/work"]

ENTRYPOINT ["/bin/bash"]
