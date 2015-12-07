FROM bradleybossard/docker-common-devbox
MAINTAINER Bradley Bossard <bradleybossard@gmail.com>

# Build the image
# docker build --rm -t docker-node-devbox .

# Fire up an instance with a bash shell
# docker run --rm -i -t docker-node-devbox

#RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -
RUN curl -sL https://deb.nodesource.com/setup_0.12 | bash -

RUN apt-get install -y python \
                       gcc \
                       make \
                       g++ \
                       nodejs

RUN npm install -g gulp \
                   grunt \
                   grunt-cli \
                   bower
