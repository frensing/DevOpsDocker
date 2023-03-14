FROM alpine

RUN apk add --no-cache curl \
    && adduser -D user

USER user

COPY script.sh .

CMD ./script.sh
