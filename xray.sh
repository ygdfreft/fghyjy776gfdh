#!/bin/sh
if [ ! -f UUID ]; then
  UUID="e2ee72cd-b07c-42d5-985e-86d06276f14f"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

