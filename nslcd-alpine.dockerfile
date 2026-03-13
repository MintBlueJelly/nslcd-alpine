FROM alpine:3.23
RUN apk add --no-cache \
      nss-pam-ldapd \
      ca-certificates \
      && install -d -m 0755 -o nobody -g nobody /var/run/nslcd
USER 65534:65534
ENTRYPOINT ["/usr/sbin/nslcd", "-d"]
