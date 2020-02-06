# ASP.NET

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

# React

npx create-react-app client-app --use-npm --typescript

## Packages

npm install axios
npm install semantic-ui-react
npm install mobx mobx-react-lite

# Outside Installations

https://react-devtools-experimental-chrome.now.sh

---

# Entity Framework CLI

### Create Migration

dotnet ef migrations add "ActivityEntityAdded" -p Persistence -s API

### Remove Migration

dotnet ef migrations remove -p Persistence -s API

### Downgrade Database Schema

dotnet ef database update NameOfMigrationToGoBackToHere -p Persistence -s API

### Drop Database to Reset Data

dotnet ef database drop -p Persistence -s API/

---

# Creating Snippets in VSCode

Code > Preferences > User Snippets > New Snippets for File
snippet-generator.app
