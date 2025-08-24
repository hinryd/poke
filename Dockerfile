## To build the image, run:
## docker build -t poketube .

## To run the image, run:
## docker run -d  -p 6003:6003 poketube

# Base (Debian)
FROM node:20 AS builder

# Set Work Directory
WORKDIR /poketube
COPY . /poketube

# Expose Ports
EXPOSE 6003

# Install Requirements
RUN apt-get update && apt-get -y install \
    libcurl4-openssl-dev make g++ ca-certificates curl gnupg python3

# Install Packages
RUN ["npm", "install"]

# ---- Stage 2: Runtime (distroless, no git needed) ----
FROM gcr.io/distroless/nodejs20-debian12

WORKDIR /poketube

# Copy built app and node_modules from builder
COPY --from=builder /poketube /poketube

ENV NODE_ENV=production
EXPOSE 6003

# Distroless node image has 'node' as entrypoint; provide the script to run.
# Replace 'server.js' with your real entry file.
CMD ["server.js"]
