# Use Python slim as base
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && \
    apt-get install -y ffmpeg git curl && \
    rm -rf /var/lib/apt/lists/*

# Install yt-dlp
RUN pip install --no-cache-dir yt-dlp

# Copy script
COPY download.py .

# Expose port (optional if you wrap in an API)
EXPOSE 8000

# Run the script by default (can also run via command)
CMD ["python", "download.py"]
