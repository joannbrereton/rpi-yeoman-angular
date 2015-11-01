# Yeoman with some generators and prerequisites
# Adapted from Dockerfile maintained by  Kevin Littlejohn <kevin@littlejohn.id.au>
#  
FROM hypriot/rpi-node 
MAINTAINER JoAnn Brereton <joann.brereton@gmail.com>
RUN apt-get -yq update && apt-get -yq upgrade
# Install pre-requisites
# Install node.js, then npm install yo and the generators
RUN npm install -g npm \
  && npm install yo -g \
  && npm install -g generator-webapp generator-angular
# Add a yeoman user because grunt doesn't like being root
RUN adduser --disabled-password --gecos "" yeoman; \
  echo "yeoman ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
ENV HOME /home/yeoman
USER yeoman
WORKDIR /home/yeoman
# Expose the port
EXPOSE 9000
# Always run as the yeoman user
CMD ['bash']
