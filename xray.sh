#!/bin/sh
if [ ! -f UUID ]; then
  UUID="bb47f3ff-0ba1-4253-b6c0-62c605f60b95"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

