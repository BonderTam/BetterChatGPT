FROM alpine:latest
LABEL author=halfthin

RUN echo http://mirrors.aliyun.com/alpine/latest-stable/main/ > /etc/apk/repositories && \
  echo http://mirrors.aliyun.com/alpine/latest-stable/community/ >> /etc/apk/repositories
RUN apk update && apk upgrade

RUN apk add nodejs
RUN apk add npm
RUN apk add yarn

RUN mkdir /chatgpt
#COPY all 
COPY package.json /chatgpt
COPY .env.prod /chatgpt
COPY . /chatgpt

# BUILD
RUN yarn config set prefix /var/usr/.yarn && \
  yarn global add serve

WORKDIR /chatgpt
RUN yarn install

RUN yarn build

ENV NODE_ENV production

EXPOSE 3000
CMD ["/var/usr/.yarn/bin/serve", "-s", "dist", "-l", "3000"]
