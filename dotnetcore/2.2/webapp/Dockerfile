FROM microsoft/dotnet:2.2-sdk as builder
WORKDIR /app
ADD . .
RUN dotnet publish --configuration Release --output ./out

FROM microsoft/dotnet:2.2-aspnetcore-runtime
WORKDIR /app
COPY --from=builder /app/out .
EXPOSE 80

CMD ["dotnet", "WebApp.dll"]
