FROM bradleybossard/docker-common-devbox
MAINTAINER Bradley Bossard <bradleybossard@gmail.com>

# Build the image
# docker build --rm -t docker-node-devbox .

# Fire up an instance with a bash shell
# docker run --rm -i -t docker-node-devbox

RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -

RUN apt-get install -y nodejs

RUN npm install -g webpack webpack-dev-server jspm
