# Serverize & Dotnet

## Guide

Check the complete guide here: https://serverize.sh/guides/dotnet

## Deploy from your machine

First, create an account or login to your Serverize account.

- To create an account, run:
  `npx serverize auth signup`

- To login, run:
  `npx serverize auth login`

Then, run the following command to deploy your app:

`npx serverize deploy -p <project-name>`

## Deploy - CI/CD (Github Actions)

Follow this guide: https://serverize.sh/guides/ci-cd/

Happy Serverizing!

> [!IMPORTANT]
> Make sure your project have a [healthcheck endpoint](https://learn.microsoft.com/en-us/aspnet/core/host-and-deploy/health-checks).