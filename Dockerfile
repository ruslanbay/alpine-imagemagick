FROM alpine:latest

ARG BUILD_DATE="2025-03-21T20:49:43Z"
ARG BUILD_VERSION="1.0"
ARG GITHUB_USER="ruslanbay"

RUN apk update && apk add --no-cache git curl jq imagemagick imagemagick-webp && rm -rf /var/cache/apk/* /tmp/*

LABEL org.opencontainers.image.title="Alpine ImageMagick" \
      org.opencontainers.image.description="ImageMagick includes a command-line interface for executing complex image processing tasks" \
      org.opencontainers.image.source="https://github.com/${GITHUB_USER}/data-tcg-actions" \
      org.opencontainers.image.created="${BUILD_DATE}" \
      org.opencontainers.image.version="${BUILD_VERSION}" \
      org.opencontainers.image.ref.name="${BUILD_VERSION}" \
      org.opencontainers.image.licenses="GPL-3.0" \
      org.opencontainers.image.vendor="${GITHUB_USER}" \
      org.opencontainers.image.authors="${GITHUB_USER}"