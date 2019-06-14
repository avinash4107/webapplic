FROM mcr.microsoft.com/dotnet/core/sdk:2.1
COPY bin/Release/netcoreapp2.1/ app/
EXPOSE 5000
ENTRYPOINT ["dotnet", "app/webapplic.dll"]
