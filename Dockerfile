FROM node:12
ENV MYSQL_HOST: mysql
ENV MYSQL_USER: root
ENV MYSQL_PASSWORD: secret
ENV MYSQL_DB: todos
VOLUME [ "./:/app" ]
WORKDIR /app
COPY package.json yarn.lock ./
RUN yarn install --production
COPY . .
CMD ["node", "/app/src/index.js"]
