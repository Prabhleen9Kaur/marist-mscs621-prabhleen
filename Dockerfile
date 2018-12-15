FROM node

WORKDIR /marist-mscs621-prabhleen

COPY package.json .

RUN npm install

COPY . .

CMD ["npm", "start"]
