
FROM tomcat:8

# copying war file
COPY ${system.defaultWorkingDirectory}/webapp/target/**.war /usr/local/tomcat/webapps/webapp.war

