## To run this project

### Start Database
```bash
docker-compose up -d
```

### Start API
```bash
dotnet restore
dotnet build
cd API/ && dotnet watch run
```

### Start SPA
```bash
cd client-app && npm install
npm start
```