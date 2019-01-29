FROM ubuntu:18.04
LABEL author="Smruti Mandal <smrutimandal@gmail.com>"

RUN apt-get update && apt-get install -y openssh-client telnet netcat iputils-ping dnsutils curl wget default-mysql-client-core traceroute vim tcpdump net-tools

RUN curl -o /usr/bin/calicoctl -O -L  https://github.com/projectcalico/calicoctl/releases/download/v3.4.0/calicoctl && chmod +x /usr/bin/calicoctl

RUN apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["sleep", "infinity"]
