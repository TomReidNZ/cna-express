FROM node:14-alpine

# Create app directory
WORKDIR /src

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /src/

ENV NODE_ENV=production
RUN npm ci --only=production

# Bundle app source
COPY . /src

EXPOSE 9000
CMD [ "node", "bin/www" ]