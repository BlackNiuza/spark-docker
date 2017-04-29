FROM ubuntu

# setup env
RUN adduser admin
USER admin
WORKDIR /home/admin
VOLUME /home/admin/logs
RUN apt-get update && \
apt-get install ssh && \
apt install net-tools && \
apt install iputils-ping 
RUN mkdir -p /home/admin/

# copy
COPY env/* /home/admin/

# start
ENTRYPOINT ["/home/admin/bin/start.sh"]
