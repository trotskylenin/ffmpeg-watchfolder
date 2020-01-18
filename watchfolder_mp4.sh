#!/bin/bash
# Watchfolder que convierte material a MP4 H264 con audio AAC

# CARPETAS IN/OUT
IN="/home/lenin/Vídeos/Watchfolders/MP4/IN"
OUT="/home/lenin/Vídeos/Watchfolders/MP4/OUT"

# COMIENZO DEL SCRIPT
inotifywait -m -e move,create,attrib --format '%f' $IN | 
	while read -r filename 
		do
			filenamenoext=${filename%.*}
			ffmpeg -y -i "$IN/$filename" -c:v h264 -crf 20 -c:a aac -b:a 320k -map 0 "$OUT/$filenamenoext.mp4" </dev/null
		done
