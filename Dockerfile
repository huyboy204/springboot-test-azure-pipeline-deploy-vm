FROM openjdk:17-alpine

WORKDIR /app

COPY target/spring-data-jpa-mysql-2.0.jar /app/spring-data-jpa-mysql-2.0.jar
RUN chown nobody:nogroup /app/spring-data-jpa-mysql-2.0.jar
RUN mkdir -p logs
RUN chown nobody:nogroup /app/logs/

EXPOSE 8080
USER nobody

CMD ["sh", "-c", "java -jar /app/spring-data-jpa-mysql-2.0.jar | tee /app/logs/logs.txt"]