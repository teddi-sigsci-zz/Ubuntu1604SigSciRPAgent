FROM ubuntu:xenial
MAINTAINER Signal Sciences Corp.

# Install and Configure SigSci Agent
COPY sigsci-release.list /etc/apt/sources.list.d/sigsci-release.list
RUN  apt-get update; apt-get install -y apt-transport-https curl ; curl -slL https://apt.signalsciences.net/gpg.key | apt-key add -; apt-get update; apt-get install -y sigsci-agent;  apt-get clean
COPY agent.conf /etc/sigsci/agent.conf


# Copy and run start script
COPY start.sh /opt/start.sh
RUN  chmod +x /opt/start.sh

ENTRYPOINT ["/opt/start.sh"]
