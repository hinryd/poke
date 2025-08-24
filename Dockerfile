## To build the image, run:
## docker build -t poketube .

## To run the image, run:
## docker run -d  -p 6003:6003 poketube

# Base (Debian)
FROM node:20

# Set Work Directory
WORKDIR /poketube
COPY . /poketube

# Expose Ports
EXPOSE 6003

# Install Requirements
RUN apt-get update && apt-get -y install \
    libcurl4-openssl-dev make g++ ca-certificates curl gnupg

# Install Packages
RUN ["npm", "install"]

# Run
CMD npm start
