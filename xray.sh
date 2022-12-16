#!/bin/sh
if [ ! -f UUID ]; then
  UUID="df68028e-4992-43d8-adae-a46b2d1c7fbe"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

