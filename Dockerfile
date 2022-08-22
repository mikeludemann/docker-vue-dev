FROM node:alpine AS development

ENV NODE_ENV development

# Add a work directory
WORKDIR /app

# Cache dependencies
COPY package*.json .
COPY yarn.lock .

# Install dependencies
RUN yarn install

# Copy app files
COPY . .

# Port
EXPOSE 8080

# Start the app
CMD [ "yarn", "run", "serve" ]
