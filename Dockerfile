FROM node:16-alpine3.15
#Alpine linux my beloved :heart_eyes:

WORKDIR /etc/buildtheearth/support-bot

COPY package*.json ./

RUN npm install

COPY . .

ENV NODE_ENV production

ENV FORCE_COLOR 1

ENV IN_DOCKER yes

#Please edit this to your logs webserver port, just set to what bte uses normally
EXPOSE 8890
CMD ["node", "src/index.js"]
