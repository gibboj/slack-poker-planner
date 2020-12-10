FROM mhart/alpine-node:12.18.1
ENV NODE_ENV production
#MAINTAINER Deniz Gurkaynak <dgurkaynak@gmail.com>

WORKDIR /app
ADD . .

RUN npm i && \
  npm run build && \
  rm -rf node_modules && \
  npm i --production


CMD ["npm", "start"]
