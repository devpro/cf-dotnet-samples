FROM microsoft/dotnet:2.2-sdk as builder

RUN apt-get update -yq && \
    apt-get upgrade -yq && \
    apt-get install -yq curl && \
    curl -sL https://deb.nodesource.com/setup_12.x | bash - && \
    apt-get install -yq nodejs build-essential

RUN npm install -g npm
RUN npm install -g @angular/cli

WORKDIR /app
ADD . .
RUN dotnet publish --configuration Release --output ./out

FROM microsoft/dotnet:2.2-aspnetcore-runtime
WORKDIR /app
COPY --from=builder /app/out .
EXPOSE 80

CMD ["dotnet", "Angular.dll"]
