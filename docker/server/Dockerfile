FROM ruby:2.7.0

ENV RAILS_ROOT /server
RUN mkdir $RAILS_ROOT
WORKDIR $RAILS_ROOT

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install nodejs yarn

COPY ./docker/server/docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
