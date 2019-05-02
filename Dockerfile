# version 8 of node
FROM node:8

# create a directory for client
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# install app dependencies
COPY package*.json ./

RUN npm install 

# bundle app source
COPY . .
COPY docker-entrypoint.sh /

# bind to port 3000
EXPOSE 3000
ENTRYPOINT ["/docker-entrypoint.sh"]
