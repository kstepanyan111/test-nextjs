FROM node:lts-alpine

RUN mkdir /home/node/app/ 

WORKDIR /home/node/app

COPY package.json package.json

RUN npm install 

COPY . .

EXPOSE 3000

CMD npm run dev  
