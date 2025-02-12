FROM tomcat:9-jre17

WORKDIR /usr/local/tomcat/webapps/

# Use a relative path to copy the file
COPY ./target/*.war /usr/local/tomcat/webapps/app.war

EXPOSE 8989
