FROM jboss/base-jdk:8

MAINTAINER "Fathi"

ADD jboss-eap-7.2.0.zip /tmp/
RUN unzip /tmp/jboss-eap-7.2.0.zip

ENV JBOSS_HOME /opt/jboss/jboss-eap-7.2

RUN $JBOSS_HOME/bin/add-user.sh admin Password1! --silent

EXPOSE 8080 9990

CMD ["/opt/jboss/jboss-eap-7.2/bin/standalone.sh", "-b", "0.0.0.0", "-bmanagement", "0.0.0.0"]
