FROM node:18-alpine
WORKDIR /backend
COPY package*.json .
RUN npm install
COPY . .
EXPOSE 5000
CMD [ "node", "src/server.js" ]
