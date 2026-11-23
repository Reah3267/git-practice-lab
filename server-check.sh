#!/bin/bash
SERVER_NAME="ShipStack"
echo "Server: $SERVER_NAME"
if [ -f "deploy-check.sh" ]; then
    echo "Deployment script exists"
else
    echo "Deployment script missing"
fi

if systemctl is-active --quiet nginx; then
    echo "NGINX: Running"
else
    echo "NGINX: Not running"
fi

echo "Health check completed at: $(date)"
