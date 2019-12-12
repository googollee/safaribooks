FROM debian:10-slim

WORKDIR /src
COPY * /src/
RUN apt update && \
    apt install -y python3 python3-pip && \
    cd /src && \
    pip3 install -r requirements.txt
