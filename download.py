import sys
from yt_dlp import YoutubeDL

url = sys.argv[1] if len(sys.argv) > 1 else None

if not url:
    print("Please provide a URL")
    sys.exit(1)

# yt-dlp options
ydl_opts = {
    'format': 'bestaudio/best',
    'outtmpl': '/app/downloads/%(title)s.%(ext)s',
    'noplaylist': True,
}

import os
os.makedirs('/app/downloads', exist_ok=True)

with YoutubeDL(ydl_opts) as ydl:
    ydl.download([url])

print("Download finished!")
