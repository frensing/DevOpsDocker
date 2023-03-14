FROM node:16-alpine as build-stage

WORKDIR /usr/src/app

COPY example-frontend/ ./

RUN npm install \
    && npm install -g serve \
    && npm run build



FROM node:16-alpine

EXPOSE 5000

WORKDIR /usr/app/

COPY --from=build-stage /usr/src/app/build ./build/

RUN npm install -g serve \
    && adduser -D server

USER server

CMD ["serve", "-s", "-l", "5000", "build"]
