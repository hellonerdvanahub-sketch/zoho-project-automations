FROM n8nio/n8n:latest

USER root

# Install any additional packages here if needed
RUN apk add --update python3

USER node