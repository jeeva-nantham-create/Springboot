# Use OpenJDK base image
FROM eclipse-temurin:21-jdk

# Set working directory
WORKDIR /app

# Copy the WAR file into the image
COPY target/SB_Demo_Prg.war app.war

# Expose the port Spring Boot listens on
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.war"]
