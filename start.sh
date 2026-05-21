#!/bin/sh
# Replace the hardcoded port with Railway's assigned PORT
sed -i "s/\"port\": 443/\"port\": $PORT/" /etc/xray/config.json
exec xray -c /etc/xray/config.json
