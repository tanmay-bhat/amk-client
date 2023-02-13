## A Simple Amazon Managed Kafka Client Docker Image

- You can connect to AMK brokers using client machines, and on that machine you need to have AWS IAM JAR and kafka installed.
- This image combines both so that one cna just execute kafka commands using shell of this image.
- No need to install Java 11, Kafka and IAM Jar file.

## Usage

```bash
docker run -it tanmaybhat/amk-client:main bash
```
