
FROM tomcat:8

# copying war file
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/webapp.war

