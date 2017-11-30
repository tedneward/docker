FROM haxe
MAINTAINER Ted Neward <ted@tedneward.com>

RUN groupadd --gid 1000 haxe \
  && useradd --uid 1000 --gid haxe --shell /bin/bash --create-home haxe

RUN chown -R haxe:haxe /usr/local

USER haxe
WORKDIR /home/haxe
VOLUME ["/home/haxe/work"]

CMD ["/bin/bash"]