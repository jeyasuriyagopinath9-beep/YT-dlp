# Dockerfile
FROM n8nio/n8n:latest

# Switch to root to install dependencies
USER root

# Install python3, pip, and yt-dlp
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install --upgrade yt-dlp && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Switch back to n8n user
USER node

# Set default working directory
WORKDIR /home/node/

# Expose n8n port
EXPOSE 5678

# Entrypoint remains default (n8n start)
