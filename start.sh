#!/bin/bash
cd "$(dirname "$0")"
docker compose up -d
echo "SearXNG started at http://localhost:38080"
