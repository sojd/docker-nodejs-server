FROM node:10
WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 80/tcp
CMD ["node", "bin/www"]