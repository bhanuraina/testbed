FROM ruby:alpine3.15
WORKDIR /action
RUN gem install jwt && \
    apk add jq && \
    apk add curl \
    apk add bundler

RUN bundle-audit
ENTRYPOINT [echo "Hello Tested"]
