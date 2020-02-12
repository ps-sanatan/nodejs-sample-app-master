FROM node

WORKDIR /app

COPY package*.json ./

COPY index.js /app

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 3000

CMD [ "node", "index.js" ]
