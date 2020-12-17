FROM ruby:2.2-alpine

WORKDIR /app
COPY . /app

RUN apk --no-cache --update add build-base bash && \
        bundle check || bundle install && \
        apk del build-base && \
        rm -rf /var/cache/apk/* /tmp/* /var/tmp/*

ENV POST_SERVICE_HOST post
ENV POST_SERVICE_PORT 5000
ENV COMMENT_SERVICE_HOST comment
ENV COMMENT_SERVICE_PORT 9292

ENTRYPOINT ["puma"]
