## To build the image, run:
## docker build -t poketube .

## To run the image, run:
## docker run -d  -p 6003:6003 poketube

# ---- Stage 1: Builder (has npm) ----
FROM node:20 AS builder

WORKDIR /poketube
COPY . /poketube

RUN ["npm", "install"]

# Copy the rest of the source
COPY . .

# ---- Stage 2: Runtime (distroless, no shell/npm) ----
FROM gcr.io/distroless/nodejs20-debian12

WORKDIR /poketube

# Copy app and installed deps from builder
COPY --from=builder /poketube /poketube

# Environment and ports
ENV NODE_ENV=production
EXPOSE 6003

# Distroless Node images use 'node' as the entrypoint,
# so provide the script to run as CMD.
# Replace 'server.js' with your actual entry file (e.g., index.js or dist/server.js).
CMD ["server.js"]
