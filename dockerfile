FROM n8nio/n8n:1.111.0

USER root

# Install any additional packages here if needed
RUN apk add --update python3

USER node