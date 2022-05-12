FROM jenkins/jnlp-slave:4.9-1-alpine

USER root

ENV GOROOT=/usr/lib/go/
ENV GOPATH=/home/jenkins/go
ENV PATH=$PATH:$GOPATH/bin
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk
ENV PATH=/usr/lib/jvm/java-11-openjdk/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV VAULT_ADDR=https://vault.psilva.org:8200/

WORKDIR /home/jenkins

RUN date > /home/jenkins/date
RUN passwd -d jenkins
RUN apk --update --no-cache add sudo git bash make musl-dev python3 nodejs npm go openjdk11 unzip curl jq ansible

# fix golang perms
RUN mkdir go
RUN chown -R jenkins $GOPATH $GOROOT

# install hasicorp vault
RUN curl -o vault.zip https://releases.hashicorp.com/vault/1.10.2/vault_1.10.2_linux_amd64.zip
RUN unzip vault.zip
RUN chmod +x vault
RUN mv vault /usr/local/bin

# install hasicorp terraform
RUN curl -o terraform.zip https://releases.hashicorp.com/terraform/1.1.9/terraform_1.1.9_linux_amd64.zip
RUN unzip terraform.zip
RUN chmod +x terraform
RUN mv terraform /usr/local/bin

#  Clean directories
RUN rm -rf vault.zip /usr/share/man /tmp/* /var/cache/apk/* /opt/java 

USER jenkins
