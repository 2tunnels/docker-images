FROM ghcr.io/astral-sh/uv:python3.12-trixie-slim

RUN apt-get update -y && \
    apt-get install -y --no-install-recommends gdal-bin && \
    rm -rf /var/lib/apt/lists/*
