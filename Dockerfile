FROM node:14.16.1-alpine3.10

ENV NODE_ENV=production

EXPOSE 3000

WORKDIR /usr/src/app

RUN apk update && apk add bash --no-cache tini

COPY package.json package-lock*.json ./ 

RUN npm install && npm cache clean --force

ENV PATH /usr/src/app/node_modules/:bin/:$PATH

COPY . .

ENTRYPOINT [ "/sbin/tini", "-s", "--" ]

CMD [ "node", "index.js" ]
