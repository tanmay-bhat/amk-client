#dockerfile for connecting to AWS MSK

# Use an official openjdk image as the base
FROM openjdk:21-slim-buster

# Install Kafka client library
RUN apt-get update && apt-get install -y wget
RUN wget https://archive.apache.org/dist/kafka/2.8.0/kafka_2.12-2.8.0.tgz
RUN tar -xzf kafka_2.12-2.8.0.tgz

#download AWS MSK IAM module in kafka-version/libs
RUN wget https://github.com/aws/aws-msk-iam-auth/releases/download/v1.1.1/aws-msk-iam-auth-1.1.1-all.jar
RUN mv aws-msk-iam-auth-1.0.0.jar kafka_2.12-2.8.0/libs

#cd into kafka_2.12-2.8.0/bin

RUN cd kafka_2.12-2.8.0/bin

#set the entrypoint to a interactive shell
ENTRYPOINT /bin/bash
