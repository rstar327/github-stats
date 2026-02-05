FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Install express for local dev server
RUN npm install express

EXPOSE 9000

CMD ["node", "express.js"]
