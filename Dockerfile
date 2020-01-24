FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/uaa-0.0.5-SNAPSHOT.jar
COPY ${JAR_FILE} uaa-0.0.5-SNAPSHOT.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/uaa-0.0.5-SNAPSHOT.jar"]
