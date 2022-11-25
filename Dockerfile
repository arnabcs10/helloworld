# FROM maven:3.5-jdk-8-alpine as builder

# WORKDIR /app
# COPY pom.xml ./
# COPY src ./src/

# RUN mvn package -DskipTests

# FROM adoptopenjdk/openjdk8:jdk8u202-b08-alpine-slim

# COPY --from=builder /app/target/helloworld-*.jar /helloworld.jar

# CMD ["java","-Djava.security.egd=file:/dev/./urandom","-Dserver.port=${PORT}","-jar","/helloworld.jar"]

FROM adoptopenjdk/openjdk11

WORKDIR /app

ADD target/helloworld-0.0.1-SNAPSHOT.jar /helloworld.jar

CMD ["java","-Djava.security.egd=file:/dev/./urandom","-Dserver.port=8080","-jar","/helloworld.jar"]
# ENTRYPOINT ["java", "-jar", "helloworld.jar"]