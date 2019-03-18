FROM ubuntu:18.04
LABEL author="Smruti Mandal <smrutimandal@gmail.com>"

RUN apt-get update && apt-get install -y openssh-client telnet netcat iputils-ping dnsutils curl wget default-mysql-client-core traceroute vim tcpdump net-tools iproute2 python3 python3-pip 

RUN pip3 install awscli --upgrade

RUN apt-get update && \
    apt-get -y install apt-transport-https \
         ca-certificates \
         curl \
         gnupg2 \
         software-properties-common && \
    curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
    add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
       $(lsb_release -cs) \
       stable" && \
    apt-get update && \
    apt-get -y install docker-ce

RUN curl -o /usr/bin/calicoctl -O -L  https://github.com/projectcalico/calicoctl/releases/download/v3.4.0/calicoctl && chmod +x /usr/bin/calicoctl

RUN apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["sleep", "infinity"]
