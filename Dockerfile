FROM ruby:alpine3.15
WORKDIR /action
RUN gem install jwt bundler && \
    apk add jq && \
    apk add curl && 
   

RUN bundle-audit
ENTRYPOINT [echo "Hello Tested"]
