FROM python:3.9.1

RUN apt-get update 

RUN apt-get install -y sudo

RUN echo pyspark ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/pyspark\
    && chmod 0440 /etc/sudoers.d/pyspark

RUN sudo mkdir -p /home/pyspark
RUN sudo chmod 777 -R /home/pyspark

RUN groupadd pyspark

RUN useradd -s /bin/bash pyspark -g pyspark

RUN sudo apt install -y openjdk-11-jdk
RUN sudo apt-get install -y default-mysql-client

RUN sudo pip install findspark

RUN sudo apt install -y git

WORKDIR /home/pyspark 

RUN wget https://dlcdn.apache.org/spark/spark-3.2.0/spark-3.2.0-bin-hadoop3.2.tgz
RUN tar -xzvf spark-3.2.0-bin-hadoop3.2.tgz 

RUN sudo apt install -y vim

RUN sudo mkdir -p /tmp/spark-events 
RUN sudo chmod 777 -R /tmp/spark-events
RUN sudo mkdir /var/log/spark/
RUN sudo chmod 777 -R /var/log/spark

RUN sudo ln -s spark-3.2.0-bin-hadoop3.2 spark

USER pyspark
RUN echo "export SPARK_HOME=/home/pyspark/spark/" >> ~/.bashrc
RUN echo "export PATH=${PATH}:/home/pyspark/spark/bin" >> ~/.bashrc

RUN wget https://downloads.mysql.com/archives/get/p/3/file/mysql-connector-java-5.1.49.tar.gz
RUN tar -xzvf /home/pyspark/mysql-connector-java-5.1.49.tar.gz
RUN mv /home/pyspark/mysql-connector-java-5.1.49/mysql-connector-java-5.1.49.jar /home/pyspark/spark/jars

COPY ./share/hive-site.xml /home/pyspark/spark/conf/
COPY ./share/log4j.properties /home/pyspark/spark/conf/

COPY ./hiveddls/2.3.0_utf-8.sql /home/pyspark/
COPY ./hiveddls/txn.sql /home/pyspark/

RUN git clone https://github.com/yk-st/pyspark_batch
RUN git clone https://github.com/yk-st/pyspark_datamanagement_metadata.git

