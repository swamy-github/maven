
FROM tomcat:8

RUN apt-get install -y openjdk-8-jdk
# copying war file
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/webapp.war

