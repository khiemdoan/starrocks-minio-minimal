#!/bin/sh
set -e

# Data directory
mkdir -p .data
sudo chown 1000:1000 -R .data

# MinIO
mkdir -p .data/minio
sudo chown 1000:1000 -R .data/minio

# StarRocks - Frontend
mkdir -p .data/starrocks-fe
sudo chown 1000:1000 -R .data/starrocks-fe

# StarRocks - Compute
mkdir -p .data/starrocks-cn
sudo chown 1000:1000 -R .data/starrocks-cn
