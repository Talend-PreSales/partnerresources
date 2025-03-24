FROM oraclelinux:9

# Download gateway from github
RUN yum -y update
RUN yum install -y wget curl sudo jq
RUN dnf clean packages
RUN dnf install -y python3 python3-requests python3-pip
RUN pip3 install requests


WORKDIR /app

ENV TENANT_NAMEREGION=
ENV OWNER_EMAIL=
ENV MACHINEID=
ENV QAA_URL="https://innovation.us.qlikcloud.com/api/v1/automations/357cb3df-7a90-4c5c-9363-45a4ee68607a/actions/execute"
ENV QAA_EXEC_TOKEN="qq7rHO48tQeve4ziKpdJBMLzGdqDYEnIogxvTdDZYxfrD0FsKbyLaonJ7Mt9IGM0"
ENV QAA_TOKEN_HEADER_NAME="X-Execution-Token"
ENV TENANT_DOMAIN="qlikcloud.com"


WORKDIR /app
COPY ./init.sh .
COPY ./install.sh ./install-gw.sh
RUN chmod +x /app/*.sh

RUN /app/install-gw.sh

RUN dnf clean packages && yum clean all

CMD /app/init.sh
#CMD ["bash"]

