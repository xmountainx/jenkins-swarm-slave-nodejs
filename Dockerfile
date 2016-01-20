FROM sirkkalap/jenkins-swarm-slave

MAINTAINER Mountain Man <mountain.man@iheha.com>

USER root

RUN apt-get update

# Install git
RUN apt-get -y install git

# Install NodeJS
RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -
RUN apt-get -y install nodejs build-essential

# Bower
RUN npm install -g bower

# Grunt
RUN npm install -g grunt-cli

# Gulp
RUN npm install -g gulp

# jsonapitest
RUN npm install -g jsonapitest

# Update JSLINT
RUN npm install -g jslint

# docker build --force-rm=true -t staging-repo.iheha.com/$REPO_GROUP/$REPO_NAME:$PIPELINE_VERSION . 