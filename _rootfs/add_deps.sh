#!/usr/bin/env bash
set -ex
export DEBIAN_FRONTEND="noninteractive"

apt-get update && apt-get install -y \
  jq \
  openssh-client \
  telnet \
  netcat-traditional \
  iputils-ping \
  dnsutils \
  curl \
  wget \
  default-mysql-client-core \
  traceroute \
  vim \
  tcpdump \
  net-tools \
  iproute2 \
  python3 \
  python3-pip \
  unzip \
  stress-ng

curl "https://awscli.amazonaws.com/awscli-exe-linux-$(uname -m).zip" -o "awscliv2.zip"
unzip awscliv2.zip
bash ./aws/install


curl -o /usr/bin/calicoctl -O -L  https://github.com/projectcalico/calicoctl/releases/download/v3.4.0/calicoctl && chmod +x /usr/bin/calicoctl

apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
