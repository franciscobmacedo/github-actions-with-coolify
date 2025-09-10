# GitHub Actions with Coolify

Super simple repository to show how GitHub Actions works with [Coolify](https://coolify.io) to use GitHub Container Registry and to avoid using the server resources to build the image.

You can follow the docs [here](https://coolify.io/docs/knowledge-base/git/github/github-actions), but it's a bit incomplete.

Here's a detailed approach:

## 1. Setup the repository

### 1.1 Fork this repository
### 1.2 Replace the image names in `Dockerfile`
Instead of `franciscobmacedo/github-actions-with-coollify` you need `YOUR_GITHUB_USERNAME/github-actions-with-coollify`.

## 2. Setup API key in Coolify

### 2.1 Enable API Access
Go to `<YOUR_COOLIFY_INSTANCE_URL>/settings/advanced` and check the checkbox `API Access`

### 2.2 Create API Token
Go to `<YOUR_COOLIFY_INSTANCE_URL>/security/api-tokens` and create a token with `deploy` permission.

### 2.3 Add GitHub Secret
Copy that token and create a GitHub Actions secret `COOLIFY_TOKEN`

## 3. Setup Service in Coolify and copy the webhook

### 3.1 Create Resource
Create a project and a new resource. In the resource setup choose "Docker Image"

### 3.2 Configure Docker Image
The docker image URL should be `ghcr.io/YOUR_GITHUB_USERNAME/github-actions-with-coolify:latest`

### 3.3 Get Deploy Webhook
In the Configuration of that resource, go to `Webhooks` and copy the `Deploy Webhook`

### 3.4 Add GitHub Secret
Copy that webhook and create a GitHub Actions secret `COOLIFY_WEBHOOK`

## 4. Deploy

### 4.1 Push Changes
Make some changes and push this repo to main. It should automatically:
- Build the image with GitHub Actions
- Deploy it to GitHub Container Registry
- Deploy it to Coolify







