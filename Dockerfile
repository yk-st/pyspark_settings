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

RUN sudo pip install findspark

RUN sudo apt install -y git

WORKDIR /home/pyspark 

RUN wget https://dlcdn.apache.org/spark/spark-3.2.0/spark-3.2.0-bin-hadoop3.2.tgz
RUN tar -xzvf spark-3.2.0-bin-hadoop3.2.tgz 

RUN sudo apt install -y vim

RUN sudo mkdir -p /tmp/spark-events

USER pyspark
RUN echo "export SPARK_HOME=/home/pyspark/spark-3.2.0-bin-hadoop3.2/" >> ~/.bashrc
RUN echo "export PATH=${PATH}:/home/pyspark/spark-3.2.0-bin-hadoop3.2/bin" >> ~/.bashrc

RUN git clone https://github.com/yk-st/pyspark_batch