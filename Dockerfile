#dockerfile for connecting to AWS MSK

FROM openjdk:21-slim-buster

RUN apt-get update && apt-get install -y wget
RUN wget -q https://archive.apache.org/dist/kafka/2.8.0/kafka_2.12-2.8.0.tgz
RUN tar -xzf kafka_2.12-2.8.0.tgz

RUN wget -q https://github.com/aws/aws-msk-iam-auth/releases/download/v1.1.1/aws-msk-iam-auth-1.1.1-all.jar -P kafka_2.12-2.8.0/libs

WORKDIR /kafka_2.12-2.8.0/bin

ENTRYPOINT /bin/bash
