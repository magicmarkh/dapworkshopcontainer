FROM centos:latest

RUN mkdir /scripts

COPY *.sh /scripts/

RUN yum install jq mysql openssh-server openssh-clients -y 

RUN chmod +x /scripts/*