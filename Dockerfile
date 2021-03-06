FROM python:3.7-alpine3.9
MAINTAINER Midas Fuld
ENV PATH="/root/.local/bin:$PATH"
ENV PYTHONIOENCODING=UTF-8
RUN apk add --no-cache jq

ARG AWS_CLI_VERSION

RUN pip install --user awscli

ENTRYPOINT [ "aws" ]

