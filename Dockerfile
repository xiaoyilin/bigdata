FROM centos:latest
#维护者信息
MAINTAINER xiaoyilin <406735078@qq.com>
LABEL version="1.0"
LABEL description="centos7-jdk"
USER root
RUN yum install -y openssh-server && yum install -y  openssh-clients
WORKDIR /usr/local
ADD jdk1.8.0_211  jdk8u211
ADD hadoop292  hadoop292
ADD hbase221  hbase221
ADD scala2.12.10 scala2.12.10
ADD python374  python374
ADD spark244-hadoop2.7  spark244-hadoop2.7
ADD hive312  hive312
ADD zookeeper355  zookeeper355
ADD kafka221 kafka221
ADD elasticsearch683 elasticsearch683
ENV JAVA_HOME /usr/local/jdk8u211/
ENV SCALA_HOME /usr/local/scala2.12.10/
ENV HADOOP_HOME /usr/local/hadoop292/
ENV HBASE_HOME /usr/local/hbase221/
ENV SPARK_HOME /usr/local/spark244-hadoop2.7/
ENV HIVE_HOME /usr/local/hive312/
ENV ZOOKEEPER_HOME=/usr/local/zookeeper355/
ENV KAFKA_HOME=/usr/local/kafka221/
ENV ES_HOME=/usr/local/elasticsearch683/
ENV PATH $JAVA_HOME/bin:$SCALA_HOME/bin:$HADOOP_HOME/bin:$HBASE_HOME/bin:$SPARK_HOME/bin:$HIVE_HOME/bin:$ZOOKEEPER_HOME/bin:$KAFKA_HOME/bin:$ES_HOME/bin:$PATH
ENTRYPOINT ["/bin/bash"]

#后台运行容器
#docker run -dit xiaoyilin/bigdata
