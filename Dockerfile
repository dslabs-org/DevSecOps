FROM ubuntu:jammy-20250415.1
RUN apt update && apt install -y curl && \
    adduser tailsman --disabled-password --home /home/tailsman && \
    INSTALL_LOCATION=/usr/local/bin bash -c "$(curl --silent https://raw.githubusercontent.com/thoughtworks/talisman/main/install.sh)"
USER tailsman
WORKDIR /home/tailsman