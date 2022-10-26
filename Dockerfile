FROM jenkins/ssh-agent:latest

##########
# install curl
##########
RUN apt-get update && apt-get install --no-install-recommends -y curl 

##########
# Maven
##########
ENV MAVEN_VERSION=3.8.6

RUN curl -fsSL http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share \
    && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven \
    && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

ENV MAVEN_HOME=/usr/share/maven

##########
# Node.js
##########
RUN apt-get install -y ca-certificates
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs

##########
# pnpm and yarn
##########
RUN npm i -g pnpm
RUN npm i --global yarn

##########
# 工具
##########
RUN apt-get install -y ansible
RUN apt-get install -y lftp
RUN apt-get install -y git
RUN apt-get install bzip2

##########
# mysqldump
##########
RUN apt-get install -y default-mysql-client

##########
# zip
##########
RUN apt-get install -y zip
