FROM php:7.2-apache-stretch

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        wget \
