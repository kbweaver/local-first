FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /local-first
WORKDIR /local-first
ADD Gemfile /local-first/Gemfile
ADD Gemfile.lock /local-first/Gemfile.lock
RUN bundle install
ADD . /local-first
