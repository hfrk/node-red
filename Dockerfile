FROM node:17.2.0
ENV NODE_ENV=production

EXPOSE 80

WORKDIR /app

COPY ["package.json", "package-lock.json", "./"]

RUN npm install --production

COPY . .

WORKDIR /app

CMD ["node", "app.js"]
