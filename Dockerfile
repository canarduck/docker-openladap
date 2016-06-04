FROM debian:jessie

RUN apt-get update && \
    echo 'slapd/root_password password TODOPASSWD' | debconf-set-selections &&\
    echo 'slapd/root_password_again password TODOPASSWD' | debconf-set-selections && \
    apt-get install -y slapd && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 389
