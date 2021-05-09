FROM node:lts-alpine
WORKDIR /app
COPY package*.json ./

RUN npm ci --unsafe-perm
COPY . .

RUN NODE_ENV=production npm i

CMD ["npm", "run", "serve"]
