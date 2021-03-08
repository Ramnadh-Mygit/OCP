FROM node:14
WORKDIR /usr/src/app

COPY package.json ./
RUN npm install

COPY . .

EXPOSE 8080
USER root

CMD [ "npm", "start" ]