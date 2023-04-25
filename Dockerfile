FROM node:16

#Create app directory
WORKDIR /usr/src/app

#Install app dependencies
#A wildcard is used to ensure both package.json AND apckage-lock.json are copied
#where available (npm@5+)
COPY package*.json ./

RUN npm install

#bundle app source
COPY calculator.js .

EXPOSE 3040
CMD [ "node", "calculator.js"]