# ASP.NET Core with Angular Web App [C#] Web/MVC/SPA

This .NET Core App 2.2 web application has been created from Microsoft template (`dotnet new angular`).

## Setup

Make sure you have all prerequisites detailed on [this page](../../../docs/prerequisites.md).

## Deploy on Cloud Foundry

This procedure has been validated on [PWS](https://run.pivotal.io/), [PAS on GCP](https://cloud.google.com/solutions/cloud-foundry-on-gcp)
and [cfdev](https://github.com/cloudfoundry-incubator/cfdev).

* Run `cf login -a https://api.run.pivotal.io` (only once for your session), update the URL if you are not using Pivotal Web Services.
* Run `./cfpush.sh` (everytime you update the source files)
* Open in a browser the url provided in the output of the push command, enjoy!
* Run `cf logs cfsample-dotnetcore22-angular --recent` to look at recent logs
* Look at [manifest.yml](manifest.yml) and [cfpush.sh](cfpush.sh) to understand the configuration for a deployment on Clound Foundry, feel free to edit them and try!

NB: 128Mo is enough to run the application! The heavy build part (NPM/WebPack) is indeed done on your local machine.

## Run locally

* Run `dotnet build`
* Run `dotnet run` and open [localhost:5001](https://localhost:5001/)
