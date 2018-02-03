FROM eduardoshanahan/python:2.7.13.5

LABEL maintainer "Eduardo Shanahan <contact@eduardoshanahan.com>"

RUN apk add --virtual .install_dependencies_locust \
    gcc \
    musl-dev \
    python-dev \
    libffi-dev \
    openssl-dev \
    build-base \
    py-pip \
&&  pip install locust \
&&  apk del .install_dependencies_locust

ENTRYPOINT ["/bin/sh"]
