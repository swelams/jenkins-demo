FROM openjdk:9
ADD target/my-maven-docker-project.jar my-maven-docker-project.jar
ADD agent.sh .
ENTRYPOINT ["java", "-jar","my-maven-docker-project.jar"]

