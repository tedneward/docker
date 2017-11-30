FROM jruby
MAINTAINER Ted Neward <ted@tedneward.com>

RUN groupadd --gid 1000 jruby \
  && useradd --uid 1000 --gid jruby --shell /bin/bash --create-home jruby

RUN chown -R jruby:jruby /usr/local

USER jruby
WORKDIR /home/jruby
VOLUME ["/home/jruby/work"]

CMD ["/bin/bash"]