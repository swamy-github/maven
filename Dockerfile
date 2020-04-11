
FROM tomcat:8

# copying war file
COPY target/webapp.war /usr/local/tomcat/webapps/webapp.war

