FROM node

#create app working directory
WORKDIR /app

# install dependencies 
# A Wildcard to make sure that we will copy both package.json and package-lock.json
COPY package*.json /app/

RUN npm install

# Bundle app source code
COPY . . 

EXPOSE 5000
CMD ["npm", "start"]