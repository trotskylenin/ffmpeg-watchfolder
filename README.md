# ffmpeg-watchfolder
### FFMPEG Watchfolder usando inotify

Este bash script permite crear un watchfolder que transcodifica a formato h264 mp4 automaticamente cualquier contenido dejado en una carpeta de entrada (IN), dejando el resultado en una carpeta de salida (OUT).

Puede configurarse en cron para correr al inicio del sistema simplemente agregando la linea:  
@reboot *path_al_script*  

## Requisitos:
inotify-tools  
ffmpeg
