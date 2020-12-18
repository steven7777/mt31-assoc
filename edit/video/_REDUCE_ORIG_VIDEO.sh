# USAGE : $0 _ORIG_PAS_DANS_GIT_NI_SUR_FTP/video_name new_extension

# Exemple :
# USAGE : $0 _ORIG_PAS_DANS_GIT_NI_SUR_FTP/presentation_association_2020-11.mov mp4
# USAGE : $0 _ORIG_PAS_DANS_GIT_NI_SUR_FTP/presentation_association_2020-11.mov webm

video_orig=$1
video_reduced_ext=$2


new_size=1280x720

video_orig_ext=${video_orig#*.}
video_orig_name=${video_orig%%.*}

video_orig=$video_orig_name.$video_orig_ext

video_reduced=$video_orig_name-reduced-$new_size.$video_reduced_ext

echo
echo "USAGE:"
echo $0 _ORIG_PAS_DANS_GIT_NI_SUR_FTP/video_name new_extension
echo "(les extensions conseillées pour new_extension sont : webm ou flv)"
echo "(la conversion au format webm est très longue...)"
echo

echo
echo "I will reduce video file"
echo $video_orig
echo "into"
echo $video_reduced
echo

echo "[Press a key when ready]"
read press

echo "..."


ffmpeg -i $video_orig -s $new_size -strict -2 -loglevel error $video_reduced &
#ffmpeg -i $video_name.$ext -s $new_size -strict -2 -loglevel error ./$video_name-reduced-$new_size.$ext

# On pourrait aussi utiliser cette commande (à tester si la ligne ci-dessus ne marche pas bien)
#ffmpeg -i in.mov -c:a libvorbis -ac 1 -b:a 96k -ar 48000 -b:v 1100k -maxrate 1100k -bufsize 1835k out.webm &

# resultat : presentation_association_2020-11-reduced-1280x720
