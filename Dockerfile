# Use OpenJDK 17 runtime as base image
FROM paketobuildpacks/run-java-21-ubi8-base:latest

# Set working directory in container
WORKDIR /app

# Copy the pre-built JAR file from target directory
COPY target/lms-1.0.0.jar app.jar

# Expose port 8080 (default Spring Boot port)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]

# Optional JVM options for production (uncomment if needed):
# ENTRYPOINT ["java", "-Xmx512m", "-Xms256m", "-jar", "app.jar"]
