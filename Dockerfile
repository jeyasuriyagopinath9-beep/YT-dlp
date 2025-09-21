FROM n8nio/n8n:latest

USER root

# Install Python3, pip, ffmpeg, curl, and yt-dlp
RUN apt-get update && \
    apt-get install -y python3 python3-pip ffmpeg curl && \
    pip3 install --upgrade yt-dlp && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Switch back to n8n user
USER node
