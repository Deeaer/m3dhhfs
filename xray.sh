#!/bin/sh
if [ ! -f UUID ]; then
  UUID="16b1ec1e-51e3-4283-8013-21c6c7d6dfe4"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

