#!/bin/sh

trap exit TERM
while :
do
  smbclient -A /config/smb-credentials -L SMB_SERVER
  sleep 1m & wait $${!}
done
