FROM python:3.6.0-alpine
WORKDIR /app
COPY . /app

RUN apk --no-cache --update add build-base curl && \
    pip install -r /app/requirements.txt && \
    apk del build-base && \
    rm -rf /var/cache/apk/* /tmp/* /var/tmp/*




ENV POST_DATABASE_HOST post_db
ENV POST_DATABASE posts

ENTRYPOINT ["python3", "post_app.py"]
CMD ["--help"]
