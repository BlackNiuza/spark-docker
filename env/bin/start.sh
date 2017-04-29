#!/bin/bash

export ROOT_DIR=/home/admin/

# env
source ${ROOT_DIR}/bin/config.sh
source ${ROOT_DIR}/bin/set-env.sh

# hadoop
hdfs namenode -format
bash ${HADOOP_DIR}/sbin/start-dfs.sh
bash ${HADOOP_DIR}/sbin/start-yarn.sh


echo 'jps=========='
echo `jps`