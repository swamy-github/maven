
FROM tomcat:8

FROM openjdk
# copying war file
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/webapp.war

