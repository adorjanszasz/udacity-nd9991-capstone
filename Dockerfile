FROM node:10

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . public /app/
COPY . src /app/
COPY . package*.json /app/

## Step 3:
# Install packages and build
RUN npm install &&\
    npm run-script build

## Step 4:
# Expose port 3000
EXPOSE 3000

## Step 5:
# Run the react app at container launch
CMD ["npm", "start"]