# Start from official n8n image (Alpine-based)
FROM n8nio/n8n:latest

USER root

# Install Python, pip, ffmpeg, and dependencies for yt-dlp
RUN apk add --no-cache python3 py3-pip ffmpeg ca-certificates curl \
    && pip3 install --upgrade pip yt-dlp \
    && apk add --no-cache --virtual .build-deps gcc musl-dev libffi-dev make \
    && pip3 install --upgrade yt-dlp \
    && apk del .build-deps

# Switch back to n8n user
USER node
