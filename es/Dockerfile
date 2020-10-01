FROM ubuntu:18.04


RUN apt update -y
RUN apt install -y wget net-tools 
RUN cd /opt && wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.8.1-amd64.deb 
#COPY elasticsearch-7.8.1-amd64.deb /opt/elasticsearch-7.8.1-amd64.deb
RUN dpkg -i /opt/elasticsearch-7.8.1-amd64.deb

ENTRYPOINT  service elasticsearch start && tail -f  /var/log/elasticsearch/elasticsearch.log
