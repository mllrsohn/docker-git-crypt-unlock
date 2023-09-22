FROM alpine:3

RUN apk --update add \
   bash \
   curl \
   git \
   helm \
   git-crypt \
   kustomize \
   && rm -rf /var/cache/apk/*

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
