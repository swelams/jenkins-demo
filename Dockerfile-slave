FROM ubuntu:18.04

USER root

RUN mkdir -p /var/jenkins_home /home/jenkins
RUN groupadd jenkins \
    && useradd -g jenkins jenkins

RUN chown -R jenkins:jenkins /var/jenkins_home \
    && chown -R jenkins:jenkins /home/jenkins

WORKDIR /home/jenkins

RUN apt-get update && apt-get dist-upgrade -y && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y \
    git \
    apt-transport-https \
    curl \
    init \
    openssh-server openssh-client \
    docker.io \
    vim \
 && rm -rf /var/lib/apt/lists/*

RUN service ssh start

#install kubectl
RUN apt update \
    && apt-get install gnupg gnupg1 gnupg2 -y
RUN curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN touch /etc/apt/sources.list.d/kubernetes.list 
RUN echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list
RUN apt-get update
RUN apt-get install -y kubectl

#install helm3
RUN curl -fsSL https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 -o get_helm.sh  \
    && chmod 700 get_helm.sh \
    && ./get_helm.sh

#instaling NodeJs
RUN apt update \
    && apt install nodejs -y\
    && apt install npm -y


# Install Java
RUN apt-get update && apt-get install -y openjdk-11-jdk && rm -rf /var/lib/apt/lists/*

# Install Maven
RUN apt-get update && apt-get install -y maven


EXPOSE 22

ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]
