FROM node:14.16.1-alpine3.10

EXPOSE 3000

WORKDIR /usr/src/app

RUN apk update && apk add bash

COPY package.json package-lock.json* ./ 

RUN npm install && npm cache clean --force

COPY . .

CMD [ "node", "app.js" ]
