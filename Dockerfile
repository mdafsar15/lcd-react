# pull the official base image
FROM node:alpine
# set working direction

ENV PATH /app/node_modules/.bin:$PATH
WORKDIR /app
# install application dependencies
# add app
COPY ./ ./


RUN npm install
# start app
CMD ["node", "app.js"]