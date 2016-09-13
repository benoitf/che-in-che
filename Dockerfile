FROM codenvy/debian_jdk8_node

# install docker in addition to existing stuff

ENV DOCKER_BUCKET get.docker.com
ENV DOCKER_VERSION 1.6.0

RUN set -x \
  && sudo bash -c "curl -sL "https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-$DOCKER_VERSION" > /usr/bin/docker" && sudo chmod +x /usr/bin/docker
