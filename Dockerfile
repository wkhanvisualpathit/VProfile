FROM ubuntu:22.04

MAINTAINER its an optional instructions

RUN apt update -y && apt install openjdk-8-jdk wget -y

RUN wget https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.98/bin/apache-tomcat-8.5.98.tar.gz

RUN tar -xzf apache-tomcat-8.5.98.tar.gz

EXPOSE 8080

WORKDIR /apache-tomcat-8.5.98/

#COPY vprofile-v1.war /apache-tomcat-8.5.98/webapps/

ENTRYPOINT ["/apache-tomcat-8.5.98/bin/catalina.sh", "run"]

