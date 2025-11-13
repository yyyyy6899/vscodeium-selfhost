# Dockerfile
FROM lscr.io/linuxserver/vscodium:latest

# Set environment variables (these can be overridden in Render)
ENV PUID=0
ENV PGID=0
ENV TZ=Etc/UTC

# Expose the ports (same as your docker-compose.yml)
EXPOSE 3000 3001

# Create the config directory
RUN mkdir -p /config

# Default command to run VSCodium
CMD ["/usr/bin/vscodium", "--no-sandbox", "--remote=0.0.0.0:3000", "--user-data-dir=/config"]

