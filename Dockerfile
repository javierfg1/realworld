# Bun image
FROM oven/bun:latest
# Working directory
WORKDIR /usr/bun/app
# Copy the project in the working directory
COPY . /usr/bun/app
# Install bun
RUN bun install --frozen-lockfile
# Expose the port
EXPOSE 3000/tcp
# Start the application
ENTRYPOINT [ "bun", "start" ]