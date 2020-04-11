
FROM tomcat:8

# copying war file
COPY /var/lib/jenkins/workspace/docker-diployment/webapp/target/webapp.war /usr/local/tomcat/webapps/testing.war

