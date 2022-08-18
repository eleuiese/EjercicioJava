FROM openjdk:17-alpine
ENV HW_HOME=/opt/hello-world
ADD HelloWorld.java $HW_HOME/
WORKDIR $HW_HOME
RUN javac $HW_HOME/HelloWorld.java
ENTRYPOINT ["java", "HelloWorld"]
