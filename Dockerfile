FROM node:12
ENV MYSQL_HOST: mysql
ENV MYSQL_USER: root
ENV MYSQL_PASSWORD: secret
ENV MYSQL_DB: todos
VOLUME [ "./:/docker-playground" ]
WORKDIR /docker-playground
COPY package.json yarn.lock ./
RUN yarn install --production
COPY . .
CMD ["node", "/docker-playground/src/index.js"]
