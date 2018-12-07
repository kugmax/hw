FROM maven:3.5-jdk-8 as BUILD

COPY /src /usr/src/hw/src
COPY pom.xml /usr/src/hw

RUN mvn -f /usr/src/hw/pom.xml clean package

FROM openjdk:8-alpine

MAINTAINER Kugatov Maxim <maximkugatov@gmail.com>

EXPOSE 8080

COPY --from=BUILD /usr/src/hw/target/hello-world-0.0.1-SNAPSHOT.jar /app/lib/

CMD ["java", "-jar", "/app/lib/hello-world-0.0.1-SNAPSHOT.jar"]

