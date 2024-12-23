FROM node:22

WORKDIR /app

COPY package*.json ./

RUN npm install && npm install -g pnpm

COPY . .

EXPOSE 3000

CMD ["npm","run" ,"dev"]