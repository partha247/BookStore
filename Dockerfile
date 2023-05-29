FROM maven:3.8.2-jdk-8

WORKDIR /BookStore
COPY . .
RUN mvn clean install
EXPOSE 6868
CMD mvn spring-boot:run
