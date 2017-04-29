#!/bin/bash

source ./config.sh

# java scala
export JAVA_HOME=${JAVA_DIR}
export SCALA_HOME=${SCALA_DIR}
export PATH=$PATH:$JAVA_HOME/bin:$SCALA_HOME/bin

echo 'java==================='
echo `java -version`
echo 'scala=================='
echo `scala -version`

# hadoop
export HADOOP_HOME=${HADOOP_DIR}
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin

#spark
export SPARK_HOME=${SPARK_DIR}
export PATH=$SPARK_HOME/bin:$SPARK_HOME/sbin:$PATH

# set config
cp ${HADOOP_CONFIG_DIR}/* ${HADOOP_DIR}/etc/hadoop/