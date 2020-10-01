FROM centos:7

RUN yum update -y 
RUN yum install -y java wget  GeoIP-data 
#COPY logstash-7.8.1.tar.gz  /opt/logstash-7.8.1.tar.gz
#RUN cd /opt && tar zxvf logstash-7.8.1.tar.gz
RUN cd /opt && wget https://artifacts.elastic.co/downloads/logstash/logstash-7.8.1.tar.gz && tar zxvf logstash-7.8.1.tar.gz
RUN rm -rf /opt/logstash-7.8.1.tar.gz



ENTRYPOINT /opt/logstash-7.8.1/bin/logstash -f /opt/logstash.conf  --verbose
