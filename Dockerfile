FROM alpine:latest

RUN  apk add openjdk17-jre 

WORKDIR /opt

ADD  https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.91/bin/apache-tomcat-9.0.91.tar.gz .

RUN tar xf apache-tomcat-9.0.91.tar.gz
 
RUN rm -rf apache-tomcat-9.0.91.tar.gz

RUN mv apache-tomcat-9.0.91 tomcat9

COPY target/first-mvn.war /opt/tomcat9/webapps

EXPOSE 8080

CMD ["/opt/tomcat9/bin/catalina.sh", "run"]
