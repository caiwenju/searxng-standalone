#!/bin/bash
cd "$(dirname "$0")"
docker compose down
echo "SearXNG stopped"
