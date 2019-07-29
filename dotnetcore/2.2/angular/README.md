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

## Run locally with Docker

* Run `docker build -t devprofr/cfsampleangularaspnetcore:latest .`
* (optional) Review `docker images`
* Run `docker run -d -p 8080:80 --name cfsampleangularaspnetcore devprofr/cfsampleangularaspnetcore:latest`
* (optional) Run `docker push devprofr/cfsampleangularaspnetcore:latest`
* Open [localhost:8080](http://localhost:8080/)

## Run with Kubernetes

This procedure has been validated on [Pivotal Container Service (PKS)](https://pivotal.io/platform/pivotal-container-service) deployed on [Google Cloud Platform (GCP)](https://cloud.google.com/) and a local Kubernetes cluster.

* /!\ Review the file `deployment.yaml` and make sure the Docker image exists in the Docker repository
* Start the deployment with `kubectl create -f deployment.yaml`
* Monitor with `kubectl get pods`
* (optional) Run `kubectl expose deployment cfsampleangularaspnetcore-deployment --type=NodePort --name=cfsampleangularaspnetcore-service`
* Expose the web app to internet with `kubectl expose deployment cfsampleangularaspnetcore-deployment --type=LoadBalancer --port 80 --target-port 80 --name cfsampleangularaspnetcore-loadbalancer`
* Look at the service creation with `kubectl get services` (note the public IP)
* When done, open in a browser the public IP address (EXTERNAL-IP)
* Scale the deployment `kubectl scale deployment cfsampleangularaspnetcore-deployment --replicas=3`
* Look at the results `kubectl get deployment cfsampleangularaspnetcore-deployment`
* And the pods `kubectl get pods`
* Reset with `kubectl apply -f deployment.yaml`
* Cleanup `kubectl delete service cfsampleangularaspnetcore-loadbalancer`, `kubectl delete -f deployment.yaml`

Reference:
- [Kubernetes Engine Tutorials - Deploying a containerized web application](https://cloud.google.com/kubernetes-engine/docs/tutorials/hello-app)
- [Exposing an External IP Address to Access an Application in a Cluster](https://kubernetes.io/docs/tutorials/stateless-application/expose-external-ip-address/)
