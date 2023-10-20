FROM ruby:alpine3.15
WORKDIR /action
RUN gem install jwt bundler && \
    apk add jq && \
    apk add curl
   

RUN bundle update && \
    bundle exec bundle-audit
ENTRYPOINT [echo "Hello Tested"]
