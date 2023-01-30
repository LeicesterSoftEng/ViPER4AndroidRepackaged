
# bind mount all odm files
for file in $(find "$MODPATH"/system/odm -type f); do
    mount -o bind "$file" $(sed "s|$MODPATH/system||g" <<< "$file")
done
