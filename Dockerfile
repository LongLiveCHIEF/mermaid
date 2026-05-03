FROM node:22.22.2-alpine3.23@sha256:8ea2348b068a9544dae7317b4f3aafcdc032df1647bb7d768a05a5cad1a7683f

USER 0:0

RUN corepack enable \
  && corepack enable pnpm

RUN apk add --no-cache \
  git \
  build-base \
  g++ \
  cairo-dev \
  pango-dev \
  giflib-dev \
  pixman-dev \
  fontconfig-dev \
  librsvg-dev \
  jpeg-dev \
  python3 \
  && git config --add --system safe.directory /mermaid

ENV NODE_OPTIONS="--max_old_space_size=8192"

EXPOSE 9000 3333
