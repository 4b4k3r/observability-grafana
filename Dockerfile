FROM maven:3.6.3-jdk-8-slim AS build
WORKDIR /home/app
COPY . /home/app
RUN mvn -f /home/app/pom.xml clean package -DskipTests=true

FROM openjdk:8-jdk-alpine
EXPOSE 8080
COPY --from=build /home/app/target/*.jar actuator-client-api.jar
ENTRYPOINT ["sh", "-c", "java -jar /actuator-client-api.jar"]