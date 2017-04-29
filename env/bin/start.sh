#!/bin/bash

# ssh
(cd ~; ssh-keygen -t rsa; cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys)

# env
source ./config.sh
source ./set-env.sh

# hadoop
hdfs namenode -format
sh ${HADOOP_DIR}/sbin/start-all.sh


echo 'jps=========='
echo `jps`