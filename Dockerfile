
FROM tomcat:8

# copying war file
COPY /home/vsts/work/1/s/webapp/target/webapp.war /usr/local/tomcat/webapps/webapp.war

