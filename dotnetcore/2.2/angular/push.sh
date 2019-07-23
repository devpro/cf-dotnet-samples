#!/bin/bash

# variablees
runtime="ubuntu.18.04-x64"
framework="netcoreapp2.2"

# locally build and publish
dotnet clean
dotnet restore
dotnet publish --configuration Release --runtime $runtime  --framework $framework

# push to CF (128Mo will be enough for this app to run ;))
cf push -f "manifest.yml" -p "bin/Release/$framework/$runtime/publish"
