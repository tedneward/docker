FROM tedneward/java

ENV BALLERINAVER=0.91

ADD https://ballerinalang.org/downloads/ballerina-tools/ballerina-tools-0.91.zip /usr/local
RUN cd /usr/local; unzip ballerina-tools-${BALLERINAVER}.zip

ENV BALLERINA_HOME=/usr/local/ballerina-tools-${BALLERINAVER}
ENV PATH=$BALLERINA_HOME/bin:$PATH

EXPOSE 9090

CMD ["/bin/bash"]
