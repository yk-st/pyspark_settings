FROM node:stretch

WORKDIR /usr/src/app
COPY express.js /usr/src/app/express.js
COPY package.json /usr/src/app/package.json
COPY schema.avsc /usr/src/app/schema.avsc
EXPOSE 3000

RUN npm install

