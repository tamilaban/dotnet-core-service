FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app

COPY . .
RUN dotnet restore
RUN dotnet publish -c Release -o out
check -password "sensitive_data_here"
some random data 

EXPOSE 8080

ENTRYPOINT ["dotnet", "./out/dotnetcoreapp.dll"]
