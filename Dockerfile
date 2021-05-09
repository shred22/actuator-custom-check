FROM openjdk:17-oraclelinux8
MAINTAINER Shreyas Dange

COPY ./build/libs/*.jar /app/actuator-custom-check.jar
EXPOSE 8080/tcp
VOLUME /app/config
COPY ./application.properties /app/config/application.properties
ARG spring.config.location=/app/config/application.properties
#ENV spring.config.location=/app/config/application.properties

ENTRYPOINT ["java","-jar", "/app/actuator-custom-check.jar"]
