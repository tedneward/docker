FROM ubuntu

ARG build=fastdebug

RUN groupadd --gid 1000 java \
  && useradd --uid 1000 --gid java --shell /bin/bash --create-home java
RUN chown -R java:java /usr/local

RUN apt-get update && apt-get upgrade -y && \
	apt-get install -y build-essential tar mercurial cpio zip bzip2 unzip curl ccache make gcc g++ \
		ca-certificates ca-certificates-java libx11-dev libxext-dev libxrender-dev libxtst-dev libxt-dev \
		libasound2-dev libcups2-dev libfreetype6-dev pkg-config openjdk-8-jdk

RUN cd /home/java && \
	hg clone http://hg.openjdk.java.net/jdk8u/jdk8u openjdk8 && \
	cd openjdk8 && \
	bash ./get_source.sh && \
	bash ./configure --with-debug-level=${build} && \
	make images

RUN mkdir /usr/local/openjdk8-${build} && \
	cp -a /home/java/openjdk8/build/linux-x86_64-normal-server-${build}/images/j2sdk-image/* /usr/local/openjdk8-${build}

ENV JAVA_HOME=/usr/local/openjdk8-${build}
ENV PATH=$JAVA_HOME/bin:$PATH

USER java
WORKDIR /home/java
ENTRYPOINT ["/bin/bash"]
