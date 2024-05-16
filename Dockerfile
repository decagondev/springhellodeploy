# Use a base image with Java runtime environment
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file to the container
COPY app.jar /app/app.jar

# Expose the port that the Spring Boot application will run on
EXPOSE 8080

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
