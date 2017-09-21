FROM jenkins/jenkins:lts



#Specify the port to use for jenkins. MAKE SURE your application doesn't have the same port as this
ARG http_port=8082

ADD jenkins_home.tar /var/jenkins_home/
ENV JENKINS_OPTS --httpPort=${http_port}
EXPOSE ${http_port}
