FROM openjdk:16-alpine3.13
RUN mkdir -p /home/spring-clinic
COPY ./target/*.jar /home/spring-clinic/spring-petclinic.jar
EXPOSE 8080

CMD ["java", "-jar", "/home/spring-clinic/spring-petclinic.jar"]
