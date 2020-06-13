FROM node:14.4.0-alpine3.10

WORKDIR /usr/devops-node/app

COPY src /usr/devops-node/app/src/

COPY package.json ./

RUN echo "ls -al" > bash

RUN npm install

EXPOSE 1234:8080

CMD ["npm", "start"]
