
# Use tomcat9 image
FROM tomcat:9-jre17

# Set the working directory
WORKDIR /usr/local/tomcat/webapps

# Copy the built JAR file into the container
COPY target/jpetstore.war jpetstore.war


# Expose the port the app runs on
EXPOSE 9999

# Command to run the application
#ENTRYPOINT ["java", "-jar", "app.jar"]
