
# Nexu Backend: API for Models and Brands 


For this challenge, the resources were created in Azure for the Database, Container for files and App Service for the deployment of the API.
#
## Database
![Database](https://nexustoragetest.blob.core.windows.net/images/bd.png)


#
## .NET 7 Web API
The API was developed under .Net 7, it was deployed in an Azure Service for a simple demonstration using Swagger UI

Endopoints:
```
GET    https://nexuapi.azurewebsites.net/brands
GET    https://nexuapi.azurewebsites.net/brands/:id/models
POST   https://nexuapi.azurewebsites.net/brands  body: "{\"name\": \"Toyota\"}"
POST   https://nexuapi.azurewebsites.net/brands/:id/models  **UNFINISHED**
PUT    https://nexuapi.azurewebsites.net/models/:id
GET    https://nexuapi.azurewebsites.net/models
```


For Swagger UI, visit https://nexuapi.azurewebsites.net/index.html

![Open request](https://nexustoragetest.blob.core.windows.net/images/1.png)

![Try](https://nexustoragetest.blob.core.windows.net/images/2.png)

![Execute](https://nexustoragetest.blob.core.windows.net/images/3.png)

![Response](https://nexustoragetest.blob.core.windows.net/images/4.png)