FROM openjdk
COPY target/*.jar EurekaServer-0.0.1-SNAPSHOT.jar
EXPOSE 8761
ENTRYPOINT ["java","-jar"," build\libs\EurekaServer-0.0.1-SNAPSHOT.jar"]
