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
npm install react-router-dom
npm install @types/react-router-dom

// Notification Componenets
npm install react-toastify

// Form Components
npm install react-final-form final-form

// Date Components
npm install react-widgets react-widgets-date-fns
npm install date-fns@2.0.0-alpha.13
npm install @types/react-widgets

// React-Dropzone
npm install --save react-dropzone
npm install react-cropper@1.2.0
npm install @types/cropperjs@1.1.1

// Validation For Forms
npm install revalidate

// SignalR
npm install @microsoft/signalr

// Infinite Scroller
npm install react-infinite-scroller
npm install @types/react-infinite-scroller

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

# Dotnet Secrets

dotnet user-secrets init -p API/

dotnet user-secrets set "TokenKey" "INSERTAKEYHERE" -p API/
<<<<<<< HEAD
<<<<<<< HEAD
=======
dotnet user-secrets set "Cloudinary:CloudName" "INSERTAKEYHERE"
dotnet user-secrets set "Cloudinary:ApiKey" "INSERTAKEYHERE"                                                                                                
dotnet user-secrets set "Cloudinary:ApiSecret" "INSERTAKEYHERE"
>>>>>>> Section16
=======
dotnet user-secrets set "Cloudinary:CloudName" "INSERTAKEYHERE"
dotnet user-secrets set "Cloudinary:ApiKey" "INSERTAKEYHERE"                                                                                                
dotnet user-secrets set "Cloudinary:ApiSecret" "INSERTAKEYHERE"
>>>>>>> Section17

# Creating Snippets in VSCode

Code > Preferences > User Snippets > New Snippets for File
snippet-generator.app

# Publishing the Application

cd subdir && git init && cd ..
dotnet publish -c Release -o publish --self-contained false Reactivities.sln                                       