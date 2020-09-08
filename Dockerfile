FROM node:alpine

RUN apk add git && \
    git config --global user.email "mohammadamine.banaei@gmail.com" &&\
    git config --global user.name "MohammadBnei"

WORKDIR /app

COPY . ./

RUN npm i --silent

CMD npm run deploy