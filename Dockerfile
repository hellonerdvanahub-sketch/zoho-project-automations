FROM n8nio/n8n:alpine

USER root
RUN apk add --no-cache python3 py3-pip
USER node