FROM tomcat
RUN apt update
RUN apt install maven -y
WORKDIR /usr/local/tomcat
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
WORKDIR boxfuse-sample-java-war-hello
RUN mvn package
RUN cp ./target/hello-1.0.war /usr/local/tomcat/webapps/