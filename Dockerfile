# using Node v10
FROM node:10
# Create app directory
WORKDIR /usr/src/lafs

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available
COPY package*.json ./

Run npm install -g @angular/cli@v6-lts
RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

# Expose port 4200 outside container
EXPOSE 4200
# Command used to start application
CMD ng serve --host 0.0.0.0