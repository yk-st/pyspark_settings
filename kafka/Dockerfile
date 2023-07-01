FROM python:3.9.1

RUN apt-get update 

RUN apt-get install -y sudo

# 以下の代わりに
RUN sudo apt install -y openjdk-11-jdk

# こちらをコメントイン
#RUN wget https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz
#RUN sudo mkdir /opt/jdk
#RUN sudo tar -zxf openjdk-11.0.2_linux-x64_bin.tar.gz -C /opt/jdk
#RUN sudo update-alternatives --install /usr/bin/java java /opt/jdk/jdk-11.0.2/bin/java 100
#RUN sudo update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk-11.0.2/bin/javac 100

RUN sudo apt-get install -y default-mysql-client

COPY kafka_2.13-3.0.2.tgz /
#RUN wget https://dlcdn.apache.org/kafka/3.0.2/kafka_2.13-3.0.2.tgz
RUN tar -xzvf kafka_2.13-3.0.2.tgz

RUN ln -s kafka_2.13-3.0.2 kafka

COPY start_up.sh  /etc/rc.local/
RUN chmod 755 /etc/rc.local/start_up.sh
