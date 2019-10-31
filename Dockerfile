FROM centos:latest

RUN mkdir /scripts

COPY dap-k8s-secret.sh local-k8s-secret.sh /scripts/

RUN yum install jq -y

RUN chmod +x /scripts/dap-k8s-secret.sh && chmod +x /scripts/local-k8s-secret.sh