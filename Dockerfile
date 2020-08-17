FROM centos:latest
#维护者信息
MAINTAINER xiaoyilin <406735078@qq.com>
LABEL version="1.0"
LABEL description="centos7-jdk"
USER root
RUN yum install -y openssh-server && yum install -y  openssh-clients
WORKDIR /usr/local
ADD jdk1.8.0_261  jdk8u261
ADD hadoop210  hadoop210
ADD flink193   flink193
ADD hbase225  hbase225
ADD scala2.12.12 scala2.12.12
ADD python378  python378
ADD spark246-hadoop2.7  spark246-hadoop2.7
ADD hive312  hive312
ADD zookeeper358  zookeeper358
ADD kafka251 kafka251
ADD elasticsearch6811 elasticsearch6811
ENV JAVA_HOME /usr/local/jdk8u261/
ENV SCALA_HOME /usr/local/scala2.12.12/
ENV HADOOP_HOME /usr/local/hadoop210
ENV FLINK_HOME /usr/local/flink193
ENV HBASE_HOME /usr/local/hbase225
ENV SPARK_HOME /usr/local/spark246hadoop2.7/
ENV HIVE_HOME /usr/local/hive312/
ENV ZOOKEEPER_HOME=/usr/local/zookeeper358/
ENV KAFKA_HOME=/usr/local/kafka251/
ENV ES_HOME=/usr/local/elasticsearch6811
ENV PATH $JAVA_HOME/bin:$SCALA_HOME/bin:$HADOOP_HOME/bin:$HBASE_HOME/bin:$SPARK_HOME/bin:$HIVE_HOME/bin:$ZOOKEEPER_HOME/bin:$KAFKA_HOME/bin:$ES_HOME/bin:$PATH
ENTRYPOINT ["/bin/bash"]

#后台运行容器
#docker run -dit xiaoyilin/bigdata
