FROM magicmarkh/dap-workshop-k8s:v1

COPY mysql-performers.sh /scripts/

RUN yum install mysql -y

RUN chmod +x /scripts/mysql-performers.sh

