# Yeoman for Raspberry Pi + Docker with some generators and prerequisites
# Adapted from Dockerfile maintained by  Kevin Littlejohn <kevin@littlejohn.id.au>
#  
FROM hypriot/rpi-node 
MAINTAINER JoAnn Brereton <joann.brereton@gmail.com>
# Install pre-requisites
# Update npm.
RUN npm install -g npm 
# Install all the other npm pieces, grunt, bower, yo generators
RUN npm install -g grunt-cli bower yo generator-karma generator-angular
# Add a yeoman user because grunt doesn't like being root
RUN adduser --disabled-password --gecos "" yeoman; \
  echo "yeoman ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
ENV HOME /home/yeoman
USER yeoman
WORKDIR /home/yeoman
# Expose the port
EXPOSE 9000
