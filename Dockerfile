FROM ubuntu:18.04
LABEL author="Smruti Mandal <smrutimandal@gmail.com>"

RUN apt-get update

RUN apt-get install -y openssh-client telnet netcat iputils-ping dnsutils curl wget default-mysql-client-core traceroute vim tcpdump

RUN apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["sleep", "infinity"]
