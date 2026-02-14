# n8n on Render

This repository contains the configuration to deploy [n8n](https://n8n.io) on [Render](https://render.com).

## Deployment Instructions

1.  **Fork or Push this repository** to your GitHub/GitLab account.
2.  **Create a new Blueprint** on Render:
    - Go to your Render Dashboard.
    - Click **New +** and select **Blueprint**.
    - Connect your repository.
    - Click **Apply**.

## Configuration

The `render.yaml` file configures:
- A Web Service for n8n.
- A Disk (`n8n-data`) for persistent storage (workflows, credentials, etc.).

### Environment Variables

| Variable | Description |
| :--- | :--- |
| `N8N_PORT` | Port n8n listens on (default: 5678). |
| `N8N_PROTOCOL` | Protocol (https). |
| `NODE_ENV` | Environment (production). |
| `WEBHOOK_URL` | **IMPORTANT:** Set this to your Render service URL (e.g., `https://n8n-xxxx.onrender.com`) after the first deployment to enable webhooks. |
| `N8N_ENCRYPTION_KEY` | Automatically generated key for encrypting credentials. |

## Updating

Render will automatically deploy updates when you push changes to this repository. To update n8n version, modify the `FROM n8nio/n8n:latest` line in `Dockerfile` to a specific version if needed.
