FROM n8nio/n8n:latest
USER root
RUN apk update && apk add --no-cache python3 py3-pip ffmpeg ca-certificates && pip3 install --no-cache-dir yt-dlp
USER node
