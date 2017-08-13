FROM node

# install angular-cli as "node" user
RUN chown -R node:node /usr/local/lib/node_modules
RUN chown -R node:node /usr/local/bin

USER node
WORKDIR /home/node

ENTRYPOINT ["/bin/bash"]
