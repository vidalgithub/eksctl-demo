# FROM node:14.2-alpine as build
# WORKDIR /app
# COPY . /app
# ENV PATH /app/node_modules/.bin:$PATH
# COPY package.json /app/package.json
# RUN npm install --silent
# RUN npm start
# EXPOSE 9000



FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 9000
EXPOSE 8080
CMD [ "node", "index.js" ]
