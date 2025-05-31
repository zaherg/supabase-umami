# Use the original image as the base
FROM ghcr.io/umami-software/umami:postgresql-latest

# Set the working directory (adjust if necessary)
WORKDIR /app

USER root

# Update the Prisma schema file using sed
RUN sed -i '/^\s*url\s*=\s*env("DATABASE_URL")/a\  directUrl = env("DIRECT_URL")' prisma/schema.prisma

RUN chgrp -R 0 /app && \
    chmod -R g=u /app

# Switch back to the original non-root user
USER node
