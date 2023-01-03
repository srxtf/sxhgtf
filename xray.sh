#!/bin/sh
if [ ! -f UUID ]; then
  UUID="bd2b70ee-b20a-4b33-9aae-d94555e516aa"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

