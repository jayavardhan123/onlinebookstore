# Use official Tomcat base image
FROM tomcat:9.0-jdk17

# Remove default webapps (optional, keeps image clean)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat’s webapps directory
COPY app.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
