FROM tedneward/java8

RUN apt-get udpate && \
	apt-get install -y \
		git mercurial zip bzip2 unzip curl tar \
		ccache make gcc g++ ca-certificates ca-certificates-java \
		libx11-dev libxext-dev libxrender-dev libxtst-dev libxt-dev \
		libasound2-dev libcups2-dev libfreetype6-dev \
		build-essential pkg-config

RUN cd /home/java && \
	hg clone http://hg.openjdk.java.net/jdk9/jdk9 openjdk9 && \
	cd openjdk9 && \
	bash ./get_source.sh

RUN bash ./configure && \
	bash ./configure --with-debug-level=fastdebug && \
	bash ./configure --with-debug-level=slowdebug

USER java
WORKDIR /home/java


