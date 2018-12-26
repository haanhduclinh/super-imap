FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /super-imap
WORKDIR /super-imap
COPY Gemfile /super-imap/Gemfile
COPY Gemfile.lock /super-imap/Gemfile.lock
RUN bundle install
COPY . /super-imap