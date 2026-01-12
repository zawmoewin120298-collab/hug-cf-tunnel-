#!/bin/sh
# Start Xray in the background
/usr/bin/xray -config /etc/xray/config.json &

# Start Cloudflare Tunnel
cloudflared tunnel --no-autoupdate run --token ${TUNNEL_TOKEN}
