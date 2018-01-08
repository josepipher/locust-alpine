FROM alpine:3.6

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base \
  && pip install locustio \
  && rm -rf /var/cache/apk/*

WORKDIR /app

EXPOSE 8089

ENTRYPOINT ["sh"]
