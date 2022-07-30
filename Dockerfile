# Docker multi-stage build
 
# 1. Building the App with Maven
FROM maven:3-jdk-11
 
ADD . /reportserver
WORKDIR /reportserver

# Just echo so we can see, if everything is there :)
RUN ls -l

# Run Maven build
RUN mvn clean install


# 2. Just using the build artifact and then removing the build-container
FROM openjdk:11-jdk

VOLUME /tmp


# Add app.war to Container
COPY --from=0 "/reportserver/target/*.war" reportserver.war
COPY --from=0 "/reportserver/target/dependency/webapp-runner.jar" webapp-runner.jar
 
CMD java $JAVA_OPTIONS -jar webapp-runner.jar --port $PORT reportserver.war
