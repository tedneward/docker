FROM ubuntu

RUN groupadd --gid 1000 dotnet \
  && useradd --uid 1000 --gid dotnet --shell /bin/bash --create-home dotnet
RUN chown -R dotnet:dotnet /usr/local

RUN apt-get update && apt-get upgrade -y && \
	apt-get install -y git cmake llvm-3.9 clang-3.9 lldb-3.9 liblldb-3.9-dev \
		libunwind8 libunwind8-dev gettext libicu-dev liblttng-ust-dev \
		libcurl4-openssl-dev libssl-dev uuid-dev libkrb5-dev \
		lsb-release

RUN cd /home/dotnet && \
	git clone http://github.com/dotnet/source-build.git dotnetcore && \
	cd dotnetcore && \
	git submodule update --init --recursive && \
	bash build.sh

RUN mkdir /usr/local/dotnetcore && \
	cp -a /home/dotnet/dotnetcore/Tools/dotnetcli/* /usr/local/dotnetcore

USER dotnet
WORKDIR /home/dotnet
ENTRYPOINT ["/bin/bash"]
