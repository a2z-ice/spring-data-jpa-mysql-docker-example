FROM java:8-jdk-alpine
ADD target/spring-data-jpa-mysql-1.0.jar pring-data-jpa-mysql-1.0.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "pring-data-jpa-mysql-1.0.jar"]