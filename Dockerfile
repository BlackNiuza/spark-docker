FROM ubuntu

# setup env
RUN apt-get update -y
RUN apt-get install -y ssh
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y vim

# copy
COPY env/ /home/admin/
RUN chmod 777 /home/admin/*

RUN adduser admin 
RUN passwd -d admin
USER admin

WORKDIR /home/admin
VOLUME ["/home/admin/logs","/home/admin/data"]

# start
# ENTRYPOINT ["/home/admin/bin/start.sh"]
