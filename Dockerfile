FROM tomcat:9.0-jdk17

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy unzipped WAR folder (already named VisitorPassSystem)
COPY VisitorPassSystem /usr/local/tomcat/webapps/VisitorPassSystem

EXPOSE 8080

CMD ["catalina.sh", "run"]

