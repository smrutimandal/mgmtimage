FROM debian:bookworm-slim
LABEL author="Smruti Mandal <smrutimandal@gmail.com>"

ADD ["_rootfs", "/"]
RUN bash -xe /add_deps.sh && rm /add_deps.sh

CMD ["sleep", "infinity"]
