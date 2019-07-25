# ASP.NET Core Web App [C#] Web/MVC/Razor Pages

This .NET Core App 2.2 web application has been created from Microsoft template (`dotnet new webapp`).

## Setup

Make sure you have all prerequisites detailed on this [page](../../../docs/prerequisites.md).

## Deploy on Cloud Foundry

* Run `cf login -a https://api.run.pivotal.io` (only once for your session), update the URL if you are not using Pivotal Web Services.
* Run `cf push` (everytime you update the source files)
* Open in a browser the url provided in the output of the push command, enjoy!
* Run `cf logs cfsample-dotnetcore22-webapp --recent` to look at recent logs
* Look at [manifest.yml](manifest.yml) to understand the configuration for a deployment on Clound Foundry, feel free to edit it and try!

## Run locally

* Run `dotnet build`
* Run `dotnet run` and open [localhost:5001](https://localhost:5001/)
