# Use a base image with OpenJDK
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file into the container
COPY target/app.jar /app/app.jar

# Expose the port the application will run on (if needed)
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
