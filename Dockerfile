FROM ubuntu

# =====BUILD IMAGE
# setup env
RUN apt-get update -y
RUN apt-get install -y ssh
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y vim

# copy config
COPY env/ /home/admin/

# add user as admin
RUN adduser admin 
RUN passwd -d admin

# =====RUNTIME
VOLUME ["/home/admin/logs","/home/admin/data"]
WORKDIR /home/admin

# start
ENTRYPOINT bash /home/admin/user/init.sh
