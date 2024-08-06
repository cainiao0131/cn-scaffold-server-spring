FROM g-ziod8129-docker.pkg.coding.net/mysterious-forest/docker/cn-base-maven:3.8.4-openjdk-17 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn -s /usr/share/maven/ref/settings.xml dependency:go-offline
COPY src src
RUN mvn -s /usr/share/maven/ref/settings.xml -DskipTests=true package

FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/cn-scaffold-server-java.jar /app/cn-scaffold-server-java.jar
EXPOSE 1001
CMD ["java", "-jar", "cn-scaffold-server-java.jar"]