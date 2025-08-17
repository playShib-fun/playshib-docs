# syntax=docker/dockerfile:1.4
FROM node:20-alpine AS runner

WORKDIR /app

RUN apk update \
    && apk add aws-cli --no-cache \
    && npm i -g mintlify

# Set environment variables
ENV PORT 3000
ENV HOSTNAME 0.0.0.0
ENV NODE_ENV=production

# Set the NEXT_PUBLIC_ENV_NAME environment variable using the ARG instruction
# Default to 'production' if not provided as a build argument
ARG NEXT_PUBLIC_ENV_NAME=production
ENV NEXT_PUBLIC_ENV_NAME=${NEXT_PUBLIC_ENV_NAME}


# Copy the built public directory containing static assets
COPY --chown=node:node . .

# Expose the specified port
EXPOSE $PORT

RUN chown node:node /app

# Set the user context to the non-root user for better security
USER node

# Run the application
CMD ["mintlify", "dev"]