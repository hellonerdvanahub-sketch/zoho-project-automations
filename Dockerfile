FROM n8nio/n8n:latest

USER root

# Install any additional packages here if needed
RUN apt-get update && apt-get install -y python3 python3-pip

USER node
