FROM tomcat
RUN apt update
RUN apt install maven -y
RUN apt install git -y
RUN cd /home/user
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello
RUN cd boxfuse-sample-java-war-hello/
RUN mvn package
RUN /home/user/boxfuse-sample-java-war-hello/target cp ./hello-1.0.war /var/lib/tomcat9/webapps/