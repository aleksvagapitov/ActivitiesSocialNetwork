dotnet new sln

dotnet new classlib -n Domain

dotnet sln Reactivities.sln add Domain/Domain.csproj

//From Application
dotnet add reference ../Domain
dotnet add reference ../Persistence
//From API
dotnet add reference ../Application
//From Persistence
dotnet add reference ../Domain

#### Install Dotnet Entity Framework Tool
dotnet tool install --global dotnet-ef --version 3.0.0

#### To create a Migration
dotnet ef migrations add InitialCreate -p Persistence -s API/
