#!/bin/bash

/kafka/bin/zookeeper-server-start.sh /kafka/config/zookeeper.properties &
sleep 1
/kafka/bin/kafka-server-start.sh /kafka/config/server.properties &

sleep infinity