FROM node:18-alpine

WORKDIR /app

ENV DB_HOST=db
ENV DB_USER_NAME=pauldb
ENV DB_PASSWORD=rootpwd
ENV DB_NAME=usuariosdb
ENV DB_PORT=3306

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start" ]