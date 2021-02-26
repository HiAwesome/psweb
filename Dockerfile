# Test web-app to use with Pluralsight courses and Docker Deep Dive book
# Linux x64

# 20210226 Test Dangling image
# alpine all tags url: https://hub.docker.com/_/alpine?tab=tags&page=1&ordering=last_updated
# FROM alpine:3.12
FROM alpine

LABEL maintainer="nigelpoulton@hotmail.com"

# Install Node and NPM
RUN apk add --update nodejs nodejs-npm

# Copy app to /src
COPY . /src

WORKDIR /src

# Install dependencies
RUN  npm install

EXPOSE 8080

ENTRYPOINT ["node", "./app.js"]
