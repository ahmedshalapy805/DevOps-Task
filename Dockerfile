
# Use tomcat9 image
FROM tomcat:9-jre17

# Set the working directory
WORKDIR /usr/local/tomcat/webapps/ 

# Copy the built WAR file into the container
COPY /home/ahmedshalapy/Desktop/DevOps-Task/target/jpetstore.war jpetstore.war


# Expose the port the app runs on
EXPOSE 9999

# Command to run the application
#ENTRYPOINT ["java", "-jar", "app.jar"]
