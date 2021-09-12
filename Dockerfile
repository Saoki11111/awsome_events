FROM ruby:2.7.1
RUN apt-get update -qq && apt-get install -y build-essential nodejs
RUN mkdir /awsome_events
WORKDIR /awsome_events
COPY Gemfile /awsome_events/Gemfile
COPY Gemfile.lock /awsome_events/Gemfile.lock
RUN bundle install
COPY . /awsome_events
