FROM node:14.17.0

WORKDIR /app

RUN yarn global add nuxt

ENV HOST 0.0.0.0
EXPOSE 3000
