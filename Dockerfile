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

# Expose port
EXPOSE 3000

# Start the app
CMD [ "yarn", "run", "serve" ]
