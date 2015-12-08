FROM bradleybossard/docker-common-devbox
MAINTAINER Bradley Bossard <bradleybossard@gmail.com>

# Build the image
# docker build --rm -t docker-node-devbox .

# Fire up an instance with a bash shell
# docker run --rm -i -t docker-node-devbox

ENV USER root

RUN curl -sL https://deb.nodesource.com/setup_0.12 | bash -

RUN apt-get install -y python \
                       gcc \
                       make \
                       g++ \
                       pkg-config \
                       libgnome-keyring-dev \
                       nodejs

RUN npm install -g gulp \
                   grunt \
                   grunt-cli \
                   bower \
                   semantic-release-cli

#RUN mkdir -p /root/.node-gyp/0.12.9
#RUN chmod -R 777 /root/.node-gyp
