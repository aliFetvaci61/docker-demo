FROM java:8-jdk-alpine

COPY ./target/docker-demo-0.0.1-SNAPSHOT.jar /usr/app/

WORKDIR /usr/app

RUN sh -c 'touch docker-demo-0.0.1-SNAPSHOT.jar'

ARG JAR_FILE=target/docker-demo-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","docker-demo-0.0.1-SNAPSHOT.jar"]