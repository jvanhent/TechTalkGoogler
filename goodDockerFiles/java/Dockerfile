FROM maven:3.6.1-jdk-11-slim as builder

WORKDIR /app

COPY pom.xml .
RUN mvn dependency:resolve dependency:resolve-plugins

COPY src src
RUN mvn compile dependency:copy-dependencies

FROM gcr.io/distroless/java:11
ENTRYPOINT ["java"]
EXPOSE 8080
CMD ["-cp", "/app/classes/:/app/dependency/*", "hello.Application"]
COPY --from=builder /app/target /app