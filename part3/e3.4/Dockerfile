FROM docker

RUN apk update && apk add git

WORKDIR /usr/src/app

COPY builder.sh .

ENTRYPOINT ["./builder.sh"]
