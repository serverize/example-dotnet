FROM mcr.microsoft.com/dotnet/sdk AS build
WORKDIR /app
COPY . .
RUN dotnet restore example-dotnet.csproj
RUN dotnet publish -c Release -o out example-dotnet.csproj


FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS start
RUN apt-get update && apt-get install -y curl
WORKDIR /app
COPY --from=build /app/out .
ENV PORT=8080
EXPOSE 8080
ENTRYPOINT ["dotnet", "example-dotnet.dll"]
HEALTHCHECK CMD curl -f /healthz || exit 1