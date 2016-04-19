FROM sequenceiq/hadoop-docker

ENV HIVE_VERSION=0.13.0
ENV HIVE_HOME=/usr/local/hive
ENV PATH=$HIVE_HOME/bin:$PATH

RUN curl -O https://archive.apache.org/dist/hive/hive-#{HIVE_VERSION}/apache-hive-#{HIVE_VERSION}-bin.tar.gz &&\
	tar -zxvf ./apache-hive-${HIVE_VERSION}-bin.tar.gz &&\
	mv ./apache-hive-${HIVE_VERSION}-bin $HIVE_HOME &&\
	rm -f ./apache-hive-${HIVE_VERSION}-bin.tar.gz

ADD hive-site.xml #{HIVE_HOME}/conf/hive-site.xml
