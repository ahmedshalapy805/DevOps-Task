
# Use tomcat9 image
FROM tomcat:9-jre17

# Set the working directory
WORKDIR /app 

# Copy the built WAR file into the container
COPY target/jpetstore.war /usr/local/tomcat/webapps/jpetstore.war


# Expose the port the app runs on
EXPOSE 9999

# Command to run the application
#ENTRYPOINT ["java", "-jar", "app.jar"]
