FROM node:alpine

WORKDIR '/app'

COPY package.json .
RUN yarn install 

COPY public /app/public
COPY src /app/src

RUN yarn run build

RUN yarn global add serve

EXPOSE 5000

CMD [ "serve", "-s", "build" ]

