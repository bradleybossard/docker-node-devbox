FROM bradleybossard/docker-common-devbox
MAINTAINER Bradley Bossard <bradleybossard@gmail.com>

# Build the image
# docker build --rm -t docker-node-devbox .

# Fire up an instance with a bash shell
# docker run --rm -i -t docker-node-devbox

RUN apt-get install -y python \
                       gcc \
                       make \
                       g++

WORKDIR /root

RUN wget https://nodejs.org/download/rc/v4.0.0-rc.1/node-v4.0.0-rc.1.tar.gz

RUN tar -zxvf node-v4.0.0-rc.1.tar.gz

WORKDIR /root/node-v4.0.0-rc.1

RUN ./configure

RUN make install

RUN npm install -g gulp \
                   grunt \
                   grunt-cli \
                   bower
