
#use an official Node.js runtime as the base image
FROM node:14-alpine

#set the working directory in the container
WORKDIR /usr/src/app

#copy package.json and package-lock.json into the working directory
COPY package*.json ./

#install dependencies
RUN npm install

#copy the rest of the application code to the working directory
COPY . .

#expose the port on which your node.js app runs
EXPOSE 3000

#command to run your application
CMD [ "npm" , "start" ]