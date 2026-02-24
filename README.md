# docker-images

[![CI](https://github.com/2tunnels/docker-images/actions/workflows/ci.yml/badge.svg)](https://github.com/2tunnels/docker-images/actions/workflows/ci.yml)

Personal Docker images I use as base images, CI images, and so on.

## Images

### Python

Based on [astral-sh/uv](https://github.com/astral-sh/uv/pkgs/container/uv) official images, so `uv` comes included.

| Image                                           | Description                           |
|-------------------------------------------------|---------------------------------------|
| `ghcr.io/2tunnels/python:3.14-trixie-slim`      | Python 3.14 on Debian trixie slim     |
| `ghcr.io/2tunnels/python:3.14-trixie-slim-gdal` | Same + GDAL (for PostGIS / GeoDjango) |
| `ghcr.io/2tunnels/python:3.13-trixie-slim`      | Python 3.13 on Debian trixie slim     |
| `ghcr.io/2tunnels/python:3.13-trixie-slim-gdal` | Same + GDAL (for PostGIS / GeoDjango) |
| `ghcr.io/2tunnels/python:3.12-trixie-slim`      | Python 3.12 on Debian trixie slim     |
| `ghcr.io/2tunnels/python:3.12-trixie-slim-gdal` | Same + GDAL (for PostGIS / GeoDjango) |
| `ghcr.io/2tunnels/python:3.11-trixie-slim`      | Python 3.11 on Debian trixie slim     |
| `ghcr.io/2tunnels/python:3.11-trixie-slim-gdal` | Same + GDAL (for PostGIS / GeoDjango) |
| `ghcr.io/2tunnels/python:3.10-trixie-slim`      | Python 3.10 on Debian trixie slim     |
| `ghcr.io/2tunnels/python:3.10-trixie-slim-gdal` | Same + GDAL (for PostGIS / GeoDjango) |

All images are built for `linux/amd64` and `linux/arm64`.

## Security

Images are scanned on every CI run using [Trivy](https://github.com/aquasecurity/trivy). The scanner checks for `CRITICAL` and `HIGH` severity vulnerabilities and fails the build if any unfixed vulnerabilities are found. Images are also rebuilt daily via a scheduled workflow to pick up upstream security fixes.
