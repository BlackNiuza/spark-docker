#!/bin/bash

# env
source ./config.sh
source ./set-env.sh

# hadoop
hdfs namenode -format
sh ${HADOOP_DIR}/sbin/start-all.sh


echo 'jps=========='
echo `jps`