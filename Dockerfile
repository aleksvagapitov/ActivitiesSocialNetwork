#1 Restore API dependencies
FROM mcr.microsoft.com/dotnet/core/sdk:3.1-alpine AS build-api
WORKDIR /app
COPY API/*.csproj ./API/
RUN dotnet restore ./API/*.csproj

#2 Build client-side artifacts
FROM node:12.16.3-alpine AS build-client
WORKDIR /client-app
COPY client-app/ .
RUN npm install
RUN npm run build:production

#3 Publish final output by merging server-side and client-side artifacts
FROM build-api as publish
COPY . ./
RUN cd API && dotnet publish -c Release -o out
COPY --from=build-client ./client-app/build ./API/out/wwwroot

# Runtime Image Stage
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-alpine
WORKDIR /app
COPY --from=publish /app/API/out/ .
CMD ASPNETCORE_URLS=http://*:$PORT dotnet API.dll