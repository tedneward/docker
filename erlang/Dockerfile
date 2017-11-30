FROM erlang
MAINTAINER Ted Neward <ted@tedneward.com>

RUN groupadd --gid 1000 erlang \
  && useradd --uid 1000 --gid erlang --shell /bin/bash --create-home erlang

RUN chown -R erlang:erlang /usr/local

USER erlang
WORKDIR /home/erlang
VOLUME ["/home/erlang/work"]

CMD ["/bin/bash"]