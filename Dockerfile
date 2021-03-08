FROM node:14

WORKDIR /usr/src/app
RUN chgrp -R 0 /usr/src/app \
  && chmod -R g+rwX /usr/src/app

COPY package.json ./
RUN npm install

COPY . .

EXPOSE 8080

CMD [ "npm", "start" ]