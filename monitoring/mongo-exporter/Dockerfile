FROM golang:1.14.13-alpine3.11

RUN apk --no-cache --update add git make

WORKDIR /go/src/github.com/percona/mongodb_exporter

RUN git clone -q   https://github.com/percona/mongodb_exporter.git . && \
    make build

FROM quay.io/prometheus/busybox:latest

LABEL maintainer="Alexey Palazhchenko <alexey.palazhchenko@percona.com>"

COPY --from=0 /go/src/github.com/percona/mongodb_exporter/bin/mongodb_exporter /bin/mongodb_exporter

ENTRYPOINT [ "/bin/mongodb_exporter" ]
