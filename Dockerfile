# Dockerfile
FROM lscr.io/linuxserver/vscodium:latest

# Set environment variables (you can override them in Render Dashboard)
ENV PUID=1000
ENV PGID=1000
ENV TZ=Etc/UTC

# Copy the startup script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expose the same ports used in your compose file
EXPOSE 3000 3001

# Start the container
CMD ["/start.sh"]
