FROM node:14

RUN chgrp -R 0 /usr/src/app \
  && chmod -R g+rwX /usr/src/app
WORKDIR /usr/src/app

COPY package.json ./
RUN npm install

COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]