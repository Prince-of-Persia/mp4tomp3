cp -a /$2/. /$2/  #copy the whole dir from src to dest

#cd $2 #change dir to dest

#convert *.mp4 to *.mp3
find $2 -name "*.mp4" -exec bash -c 'var=${1%.mp4}; var=${var#*/};ffmpeg -i "${1#*/}" -vn -acodec libmp3lame -ac 2 -qscale:a 4 -ar 48000 "$2/$var".mp3' - '{}' \;

#echo "Cleaning up" 
#find $2 -name "*.mp4" -exec bash -c 'var=${1%.mp4}; var=${var#*/}; rm "${1#*/}"' - '{}' \;
