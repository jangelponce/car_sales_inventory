FROM node:14.15

ENV CLIENT_ROOT /client

RUN mkdir $CLIENT_ROOT
WORKDIR $CLIENT_ROOT

COPY ./docker/client/docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
