FROM jenkins/jnlp-slave:4.9-1-alpine

USER root

RUN apk --no-cache add sudo git make musl-dev python3 nodejs npm go openjdk11
RUN echo '%wheel ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/wheel
RUN adduser jenkins wheel
RUN date > /home/jenkins/d
RUN passwd -d jenkins

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk
ENV PATH=/usr/lib/jvm/java-11-openjdk/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

RUN rm -rf /opt/java 

USER jenkins