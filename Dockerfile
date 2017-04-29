FROM ubuntu

# setup env
RUN apt-get update -y
RUN apt-get install -y ssh
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y vim

RUN adduser admin 
RUN passwd -d admin
USER admin

WORKDIR /home/admin
VOLUME ["/home/admin/logs","/home/admin/data"]
RUN whoami

# copy
COPY env/ /home/admin/

# start
# ENTRYPOINT ["/home/admin/bin/start.sh"]
