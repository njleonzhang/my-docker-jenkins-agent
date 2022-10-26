# my-docker-jenkins-agent


## base image
FROM jenkins/ssh-agent:latest

## installed package

* curl
* Maven 3.8.6
* node 16
* yarn 
* pnpm
* ansible
* lftp
* default-mysql-client (for mysqldump)
* zip

