FROM mcr.microsoft.com/dotnet/aspnet:3.1-alpine AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:3.1-alpine AS build
WORKDIR /src
COPY ["src/Identity.SSO/Identity.SSO.csproj", "src/Identity.SSO/"]
RUN dotnet restore "src/Identity.SSO/Identity.SSO.csproj"
COPY . .
WORKDIR "/src/src/Identity.SSO"
RUN dotnet build "Identity.SSO.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "Identity.SSO.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "Identity.SSO.dll"]