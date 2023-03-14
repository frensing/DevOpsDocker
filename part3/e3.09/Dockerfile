FROM golang:1.16-alpine as build-stage

WORKDIR /usr/src/app

COPY ./example-backend/ ./

RUN CGO_ENABLED=0 GOOS=linux go build



FROM scratch

EXPOSE 8080

WORKDIR /usr/app

COPY --from=build-stage /usr/src/app/server /usr/app/

CMD ["./server"]
