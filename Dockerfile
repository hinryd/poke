## To build the image, run:
## docker build -t poketube .

## To run the image, run:
## docker run -d  -p 6003:6003 poketube

# Base (Debian)
FROM gcr.io/distroless/nodejs20-debian12

# Set Work Directory
WORKDIR /poketube
COPY . /poketube

# Expose Ports
EXPOSE 6003

# Install Packages
RUN ["npm", "install"]

# Run
CMD npm start
