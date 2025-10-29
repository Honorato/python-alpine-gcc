# syntax=docker/dockerfile:1.7

ARG PYTHON_VERSION=3.13
FROM ghcr.io/astral-sh/uv:python${PYTHON_VERSION}-alpine AS base

LABEL maintainer="hrocha"
LABEL description="Image with Alpine, Python, uv and GCC"

# Instala compiladores e libs básicas
RUN apk add --no-cache build-base linux-headers

WORKDIR /app
COPY . .

# Exemplo opcional: atualiza pip e prepara ambiente
RUN pip install --upgrade pip setuptools wheel

CMD ["python3"]
