# Start from official n8n image
FROM n8nio/n8n:latest

# Install dependencies
USER root
RUN apk add --no-cache python3 py3-pip ffmpeg

# Upgrade/install yt-dlp
RUN pip3 install --upgrade yt-dlp

# Switch back to n8n user
USER node
