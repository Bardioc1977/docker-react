FROM node:alpine

WORKDIR '/app'

COPY package.json .
RUN yarn install 

COPY public /app/public
COPY src /app/src

RUN yarn run build

RUN yarn global add serve

CMD [ "serve", "-s", "build" ]

