FROM centos:7

RUN yum update -y && yum install -y epel-release
RUN yum install -y python-devel python python-pip git  gcc make mysql mysql-devel  nginx
#COPY server /opt/server
RUN cd /opt && git clone https://github.com/jx-sec/jxwaf-mini-server.git server
RUN cd /opt/server && pip install -i  https://pypi.tuna.tsinghua.edu.cn/simple  -r requirements.txt    && pip install -i  https://pypi.tuna.tsinghua.edu.cn/simple  uwsgi 
COPY uwsgi2.ini /opt/server/
COPY nginx.conf /etc/nginx/
COPY settings.py  /opt/server/jxwaf2018/settings.py
COPY run.sh /opt/run.sh

CMD sh /opt/run.sh
