# Use a base image with OpenJDK 17
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory to the container
COPY target/myproject-0.0.1-SNAPSHOT.jar /app/my-app.jar

# Expose the port that the application runs on
EXPOSE 8060

# Command to run the JAR file
ENTRYPOINT ["java", "-jar", "my-app.jar"]
