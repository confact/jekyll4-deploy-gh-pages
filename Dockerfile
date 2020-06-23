FROM ruby:2.6.5

# install a modern bundler version
RUN gem install bundler

RUN apt-get update && apt-get install git nodejs yarn

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
