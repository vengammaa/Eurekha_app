FROM openjdk
COPY target/*.jar /
EXPOSE 8000 
ENTRYPOINT ["java","-jar","/EurekaServer-0.0.1-SNAPSHOT.jar"]
