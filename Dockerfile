FROM bradleybossard/docker-devbox-common
MAINTAINER Bradley Bossard <bradleybossard@gmail.com>

# Build the image
# docker build --rm -t docker-node-devbox .

# Fire up an instance with a bash shell
# docker run --rm -i -t docker-node-devbox

RUN apt-get install -y nodejs-legacy \
                       npm

RUN npm install gulp bower
