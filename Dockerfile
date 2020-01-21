FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/microservices-uaa-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} microservices-uaa-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/microservices-uaa-0.0.1-SNAPSHOT.jar"]
