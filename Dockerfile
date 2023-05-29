FROM maven:3.8.2-jdk-8

WORKDIR /BookStore
COPY . .
COPY pom.xml .
RUN mvn clean package  -Dmaven.test.skip
EXPOSE 8080-8080
CMD mvn spring-boot:run
