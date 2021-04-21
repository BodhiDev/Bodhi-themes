#!/bin/sh
printf "\nRemoving icon cache and restarting related daemon (efreetd)...\n"
rm -rf ~/.cache/efreet
killall efreetd
enlightenment_remote -restart &
echo "Waiting (not done yet), chime will sound when all done!"
sleep 10
while pgrep -u $USER efreet_icon_cache_create > /dev/null; do sleep 1; done
echo Restarting Moksha...
enlightenment_remote -restart
echo -ne '\007'
echo Tada!
