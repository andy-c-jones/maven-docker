FROM maven:3.3.9-jdk-8-alpine

RUN apk update
RUN apk add docker
