FROM n8nio/n8n:1.38.1-bullseye
USER root
RUN apt-get update && apt-get install -y python3 python3-pip ffmpeg ca-certificates && pip3 install yt-dlp
USER node
