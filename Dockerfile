FROM bradleybossard/docker-common-devbox
MAINTAINER Bradley Bossard <bradleybossard@gmail.com>

# Build the image
# docker build --rm -t docker-node-devbox .

# Fire up an instance with a bash shell
# docker run --rm -i -t docker-node-devbox

ENV USER root

# Omnibus installer for Node, switching to nvm to try it out.
#RUN curl -sL https://deb.nodesource.com/setup_0.12 | bash -
#RUN curl -sL https://deb.nodesource.com/setup_4.x | bash -
#RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -

ENV NVM_DIR /usr/local/nvm
ENV NODE_VERSION 5.0 

# Install nvm with node and npm
RUN curl https://raw.githubusercontent.com/creationix/nvm/v0.30.1/install.sh | bash \
    && source $NVM_DIR/nvm.sh \
    && nvm install 0.12 \
    && nvm install 4.0 \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default \
    && npm install -g gulp \
                   grunt \
                   grunt-cli \
                   bower \
                   semantic-release-cli

#ENV NODE_PATH $NVM_DIR/$NODE_VERSION/lib/node_modules
#ENV PATH      $NVM_DIR/versions/node/$NODE_VERSION/bin:$PATH
