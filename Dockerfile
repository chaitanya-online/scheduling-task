# Use an official OpenJDK runtime as a base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR file into the container at /app
COPY build/libs/*.jar app.jar

# Expose the port the app runs on
EXPOSE 8080

# Specify the command to run on container startup
CMD ["java", "-jar", "app.jar"]
