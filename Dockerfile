# Use the official OpenJDK 17 image from Docker Hub
FROM openjdk:17
# Set working directory inside the container
WORKDIR /appContainer

#COPY cert.txt /appContainer/cert.txt

# Copy the compiled Java application JAR file into the container
COPY ./target/sping-docker2.jar /appContainer
# Expose the port the Spring Boot application will run on
EXPOSE 8282
# Copy the entrypoint script into container
#####COPY entrypoint.sh /appContainer/logs.sh
# Command to run the application
CMD ["java","-jar","sping-docker2.jar"]
