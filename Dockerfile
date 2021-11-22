FROM tomcat
RUN apt update
RUN apt install maven -y
WORKDIR /home/user
RUN apt install git -y
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
WORKDIR /home/user/boxfuse-sample-java-war-hello/target
RUN mvn package
RUN /home/user/boxfuse-sample-java-war-hello/target cp ./hello-1.0.war /var/lib/tomcat9/webapps/