FROM openjdk:17-jdk-slim

WORKDIR /app

COPY . .

RUN chmod +x mvnw && ./mvnw clean package -DskipTests

EXPOSE 5000

CMD ["java", "-jar", "target/backend-0.0.1-SNAPSHOT.jar"]