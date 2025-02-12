FROM tomcat:9-jre17

WORKDIR /usr/local/tomcat/webapps/

COPY jpetstore.war jpetstore.war

EXPOSE 8989
