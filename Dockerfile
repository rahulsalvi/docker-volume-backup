FROM offen/docker-volume-backup:v2.45.0

RUN mkdir -p /usr/local/share/ca-certificates
COPY ext/pki/tls/*.crt /usr/local/share/ca-certificates
RUN apk --no-cache add ca-certificates && update-ca-certificates
