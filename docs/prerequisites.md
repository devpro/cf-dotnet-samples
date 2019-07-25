# Prerequisites

## .NET Core

.NET Core must be installed on a developer machine (but not mandatory to only deploy to CF).

Depending on your OS there may be different solutions, in all cases you can visit [.NET Core download page](https://dotnet.microsoft.com/download) and look for .NET Core SDK.

You can verify this by running the command: `dotnet --version`. You should have in return a string like `2.2.300`.

## NPM

NPM (NodeJS) must be installed for Angular projects.

Depending on your OS there may be different solutions, in all cases you can visit [NodeJS Downloads page](https://nodejs.org/en/download/).

You can verify this by running the command: `npm --version`. You should have in return a string like `6.10.1`.

## CF CLI

Cloud Foundry CLI must be installed to do the deployments (but not mandatory for local development).

Depending on your OS there may be different solutions, in all cases you can visit [Installing the cf CLI page](https://docs.cloudfoundry.org/cf-cli/install-go-cli.html).

You can verify this by running the command: `cf version`. You should have in return a string like `cf version 6.46.0+29d6257f1.2019-07-09`.

## CF platform

A Cloud Foundry platform must be available to do the deployments, the easiest and best solution is to run on Pivotal Cloud Foundry.

You can create a free [Pivotal Web Services](https://try.run.pivotal.io/gettingstarted) account (no credit card required).
