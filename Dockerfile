# Use the original image as the base
FROM ghcr.io/umami-software/umami:postgresql-v2

# Set the working directory (adjust if necessary)
WORKDIR /app

USER root

# Update the Prisma schema file using sed
RUN sed -i '/^\s*url\s*=\s*env("DATABASE_URL")/a\  directUrl = env("DIRECT_URL")' prisma/schema.prisma

# Switch back to the original non-root user
USER node
