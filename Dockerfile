FROM ubuntu:16.04
ENV DEBIAN_FRONTEND noninteractive
WORKDIR /root
RUN apt-get update && \
    apt-get install -y build-essential libncurses5-dev libssl-dev liblzo2-dev libreadline-dev curl iproute2 iputils-ping && \
    curl https://www.tinc-vpn.org/packages/tinc-1.1pre15.tar.gz | tar xz && \
    cd tinc-1.1pre15 && \
    ./configure && \
    make && \
    make install && \
    cd /root && \
    rm -rf tinc-1.1pre15 && \
    apt-get remove -y build-essential && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

