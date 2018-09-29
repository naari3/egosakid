FROM node:10.6.0 as node
FROM ruby:2.5.1

ENV LANG C.UTF-8

RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends \
    build-essential \
    unzip && \
    rm -rf /var/lib/apt/lists/*

ENV YARN_VERSION 1.7.0

COPY --from=node /opt/yarn-v$YARN_VERSION /opt/yarn
COPY --from=node /usr/local/bin/node /usr/local/bin/

RUN ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn \
    && ln -s /opt/yarn/bin/yarnpkg /usr/local/bin/yarnpkg


RUN mkdir /app
WORKDIR /app

ENV RAILS_ENV production
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
RUN bundle config without test development doc
RUN bundle install

ADD . /app

RUN bundle exec rails assets:precompile

RUN bundle config build.nokogiri --use-system-libraries

EXPOSE 3000

CMD bundle exec puma
