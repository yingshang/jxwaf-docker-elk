FROM centos:7

RUN yum update -y && yum install -y git 
RUN cd /tmp && git clone https://github.com/jx-sec/jxwaf.git
#COPY  jxwaf /tmp/jxwaf
RUN cd /tmp/jxwaf &&  sh install_waf.sh
RUN rm -rf cd /tmp/jxwaf
COPY  jxwaf_config.json /opt/jxwaf/nginx/conf/jxwaf/jxwaf_config.json


ENTRYPOINT sed -i "s/abc111/$USER_API_KEY/g" /opt/jxwaf/nginx/conf/jxwaf/jxwaf_config.json  && sed -i "s/efg222/$USER_API_PASSWORD/g"  /opt/jxwaf/nginx/conf/jxwaf/jxwaf_config.json  &&  /opt/jxwaf/nginx/sbin/nginx && tail -f /opt/jxwaf/nginx/logs/error.log


