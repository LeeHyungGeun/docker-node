FROM node:8

# Create APP Directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

## Install APP Dependencies
COPY package*.json ./
RUN npm install

# ADD APP SOURCE
COPY . . 

EXPOSE 8080
CMD [ "npm", "start" ]