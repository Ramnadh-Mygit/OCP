FROM node:14

WORKDIR /usr/src/app
RUN chmod -R 777 public

COPY package.json ./
RUN npm install

COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]