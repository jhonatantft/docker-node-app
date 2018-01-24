FROM node:carbon

# Create app directory
WORKDIR /usr/src/app

#I nstall app dependencies
COPY package*.json ./

RUN npm install
# If production
# RUN npm install --only=production

# Bundle apps source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]
