FROM jenkins/jenkins
# set maintainer
LABEL maintainer "Optimus"
USER root
COPY . /var/jenkins_home
RUN rm -r -f /var/jenkins_home/RioMobile-iOS
RUN rm -r -f /var/jenkins_home/Rio-mobile
RUN apt update
RUN apt install openjdk-11-jdk -y
# tell docker what port to expose
EXPOSE 8009
