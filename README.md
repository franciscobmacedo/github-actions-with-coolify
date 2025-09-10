Super simple repository to show how Github Actions works with [Coolify](https://coolify.io) to use github container registry and to avoid using the server resources to build the image.

You can follow the docs in [here](https://coolify.io/docs/knowledge-base/git/github/github-actions) 
But it's a bit incomplete.

Here's a detailed approach:

1. Setup the repository
2.1 Fork this repository
2.2 replace the image names in `Dockerfile`. Instead of `franciscobmacedo/github-actions-with-coollify` you need  `YOUR_GITHUB_USERNAME/github-actions-with-coollify`.

2. Setup API key in coolify
2.1 Go to `<YOUR_COOLIFY_INSTANCE_URL>/settings/advanced` and check the checkbox `API Access`
2.2 Go to `<YOUR_COOLIFY_INSTANCE_URL>/security/api-tokens` and create a token with `deploy` permission.
2.3 Copy that and create a github actions secret `COOLIFY_TOKEN`

3. Setup Service in coolify and copy the webhook
3.1 Create a project and a new resource. In the resource setup choose "Docker Image"
3.2 The docker image url should be `ghcr.io/YOUR_GITHUB_USERNAME/github-actions-with-coolify:latest`
3.3 In the Configuration of that resource, go to `Webhooks` and copy the `Deploy Webhook`
3.4 Copy that and create a github actions secret `COOLIFY_WEBHOOK`

4. Deploy
4.1 make some changes and push this repo into main. it should automatically build the image with github actions, deploy it to github container registry and deploy it to coolify.







