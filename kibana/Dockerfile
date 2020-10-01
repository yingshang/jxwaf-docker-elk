FROM ubuntu:18.04

RUN apt update -y
RUN apt install -y wget net-tools
#COPY  kibana-7.8.1-amd64.deb  /opt/kibana-7.8.1-amd64.deb
RUN cd /opt && wget https://artifacts.elastic.co/downloads/kibana/kibana-7.8.1-amd64.deb
RUN dpkg -i /opt/kibana-7.8.1-amd64.deb

ENTRYPOINT service kibana start && tail -f /var/log/kibana/kibana.stdout
