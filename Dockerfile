FROM ubuntu:latest

COPY ./rizinrc /root/.rizinrc

RUN apt update -y && \
    apt install -y build-essential jq strace ltrace curl wget gcc dnsutils netcat-traditional \
    neovim gdb python3-full python3-pip python3-dev file libssl-dev libffi-dev wget git make procps \
    libpcre3-dev libdb-dev libxt-dev libxaw7-dev tmux

RUN pip3 install --break-system-packages requests pwntools

WORKDIR /pwn

EXPOSE 23946