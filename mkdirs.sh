#!/bin/sh
set -e

# Data directory
mkdir -p .data
sudo chown 1000:1000 -R .data

# MinIO
mkdir -p .data/minio
sudo chown 0:0 -R .data/minio

# StarRocks
mkdir -p .data/starrocks
sudo chown 0:0 -R .data/starrocks
