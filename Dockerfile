FROM ubuntu:18.04

RUN apt-get update
RUN apt-get remove -y docker docker-engine docker.io
RUN apt-get install -y curl docker.io
RUN curl -fsSL https://clis.cloud.ibm.com/install/linux | sh

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
