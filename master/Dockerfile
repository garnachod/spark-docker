FROM debian:jessie-backports

# Install cUrl
RUN apt-get update && apt-get install --yes curl unzip

RUN curl -o /spark-1.6.2.tgz http://d3kbcqa49mib13.cloudfront.net/spark-1.6.2-bin-hadoop2.6.tgz

RUN tar xvf /spark-1.6.2.tgz && rm /spark-1.6.2.tgz


RUN mkdir /opt/jdk
RUN cd /opt
RUN apt-get install --yes wget
RUN wget --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u5-b13/jdk-8u5-linux-x64.tar.gz
RUN tar -zxf jdk-8u5-linux-x64.tar.gz -C /opt/jdk
RUN update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_05/bin/java 100
RUN update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_05/bin/javac 100


RUN mv /spark-1.6.2-bin-hadoop2.6 /spark-1.6.2

ENV SPARK_HOME /spark-1.6.2

EXPOSE 7077 8080 6066 8088 8042 4040 50030

CMD ["/spark-1.6.2/bin/spark-class", "org.apache.spark.deploy.master.Master"]