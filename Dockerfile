FROM node:carbon

# Create app directory
WORKDIR /app

# Bundle apps source
COPY . .

CMD NODE_URLS=http://*:$PORT npm start