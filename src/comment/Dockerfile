FROM ruby:2.2-alpine
WORKDIR /app
COPY Gemfile* /app/

RUN apk --no-cache --update add build-base bash && \
        bundle check || bundle install && \
        apk del build-base

COPY . /app/

ENV COMMENT_DATABASE_HOST comment_db
ENV COMMENT_DATABASE comments

ENTRYPOINT ["puma"]
