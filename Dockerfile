FROM alpine:3.7

ARG HP_SERVER_URL
ARG HP_VOUCHER

ENV HP_SERVER_URL=$HP_SERVER_URL
ENV HP_VOUCHER=$HP_VOUCHER

WORKDIR ["/opt"]

RUN apk upgrade --no-cache \
    && apk add --no-cache --update \
    musl \
    linux-headers \
    g++ \
    gcc \
    libffi-dev \
    build-base \
    python3 \
    python3-dev \
    postgresql-dev \
    bash \
    git \
    wget \
  && pip3 install --no-cache-dir --upgrade pip setuptools \
  && rm -rf /var/cache/* \
  && rm -rf /root/.cache/*

RUN cd /usr/bin \
  && ln -sf python3 python \
  && ln -sf pip3 pip

RUN pip install psutil requests && \
    mkdir -p /opt && \
    wget -q -O /opt/hashtopolis.zip $HP_SERVER_URL/agents.php?download=1

COPY entrypoint.sh /entrypoint.sh

#CMD ["/usr/bin/python", "/opt/hashtopolis.zip", "--voucher", "$HP_VOUCHER", "--url", "$HP_SERVER_URL/api/server.php"]
ENTRYPOINT ["/entrypoint.sh"]
