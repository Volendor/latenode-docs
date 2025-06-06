---
url: "https://help.latenode.com/support--analytics/DTZDagfcsSJdCyLcX/basic-api-terms/DTZDaggyKyNGSDGwf"
title: "Basic API terms – Latenode | Help Center"
---

 Basic API terms

Key terminology related to API usage.



 Terms and Definitions

- REST (Representational State Transfer): An architectural style used in web development to build scalable and user-friendly interactions between the client and server.

- API (Application Programming Interface): An interface that allows programs to interact with each other. In the case of a REST API, this is typically an HTTP interface that enables clients (e.g., web applications) to communicate with the server.

- Endpoint: A specific URL to which requests can be sent to the server. For example, `https://api.example.com/users` is an endpoint for retrieving information about users.

- HTTP (Hypertext Transfer Protocol): A data transfer protocol on the network, used for interaction between the client and server in a REST API.

- GET: HTTP method used to retrieve data from the server. For instance, when you request information about a user, a GET request is used.

- POST: HTTP method used for creating new data on the server. For example, adding a new user.

- PUT: HTTP method used for updating data on the server. For example, changing user information.

- DELETE: HTTP method used for deleting data on the server. For example, deleting a user.

- Status Code: A number returned by the server in response to a request to indicate its state. For example,  OK means a successful request, and  Not Found means the requested resource was not found.

- Request: A request sent from the client to the server. It includes the method (GET, POST, etc.), headers, parameters, and request body (if necessary).

- Response: A response received from the server in reply to a request. It includes the status code, headers, and response body (typically, data requested by the client).

- JSON (JavaScript Object Notation): A data format widely used in REST APIs to represent information as text. JSON is easily readable and parseable by both the client and the server.

- Authentication: The authentication process that ensures security in the interaction between the client and the server. This may involve the use of API keys, tokens, passwords, and other methods.

 Request and Response in REST API

Specific examples of a request and response in a REST API can vary depending on the specific API and its endpoints. Below are simple examples of requests and responses for obtaining user information using a REST API.

 GET

Request to Retrieve User Information by ID Using the HTTP GET Method. The URL endpoint for this request can look as follows:

```
GET /api/users/
```

In this request:

- `GET` this is the HTTP method indicating that we want to retrieve data.

- `/api/users/` this is the URL endpoint pointing to a specific user with ID .

Example Response:

After sending the above request, the server sends a response. An example response might look like this:

```
HTTP/.  OK
Content-Type: application/json

{
  "id": ,
  "username": "Anna",
  "email": "Anna@example.com",
  "age": 
}
```

In this response:

- `HTTP/.  OK` \- this is the status code indicating that the request was successful.

- `Content-Type: application/json` \- this is the header indicating that the data in the response is in JSON format.

- The response body contains user information in JSON format, including ID, username, email, and age.

 POST

Request to Create a New User Using the HTTP POST Method. The URL endpoint for this request can look as follows:

```
POST /api/users
```

The request body contains data for the new user in JSON format. For example:

```
{
  "username": "new_user",
  "email": "newuser@example.com",
  "age": 
}
```

In this request:

- `POST` \- this is the HTTP method indicating that we want to create a new user.

- `/api/users` \- this is the URL endpoint pointing to the endpoint for creating a new user.

- The request body contains data for the new user, including username, email, and age.

Example Response:

After sending the above request, the server sends a response. An example response might look like this:

```
HTTP/.  Created
Content-Type: application/json

{
  "id": ,
  "username": "new_user",
  "email": "newuser@example.com",
  "age": 
}
```

In this response:

- `HTTP/.  Created` \- this is the status code indicating that a new resource (user) has been successfully created.

- `Content-Type: application/json` \- this is the header indicating that the data in the response is in JSON format.

- The response body contains information about the new user, including the ID assigned by the server, username, email, and age.

 PUT

Request to Update Existing User Information Using the HTTP PUT Method. The URL endpoint for this request can look as follows:

```
PUT /api/users/
```

The request body contains the updated user data typically in JSON format. For example:

```
{
  "username": "updated_user",
  "email": "updated@example.com",
  "age": 
}
```

In this request:

- `PUT` \- this is the HTTP method indicating that we want to update user data.

- `/api/users/` \- this is the URL endpoint pointing to the endpoint for updating information about the user with ID .

- The request body contains the updated user data, including the new username, email, and age.

Example Response:

After sending the above request, the server sends a response. An example response might look like this:

```
HTTP/.  OK
Content-Type: application/json

{
  "id": ,
  "username": "updated_user",
  "email": "updated@example.com",
  "age": 
}
```

In this response:

- `HTTP/.  OK` \- this is the status code indicating that the update of user data was successful.

- `Content-Type: application/json` \- this is the header indicating that the data in the response is in JSON format.

- The response body contains information about the updated user, including the ID, username, email, and age.

 DELETE

Request to Delete Existing User Information Using the HTTP DELETE Method. The URL endpoint for this request can look as follows:

```
DELETE /api/users/
```

In this request:

- `DELETE` \- this is the HTTP method indicating that we want to delete user data.

- `/api/users/` \- this is the URL endpoint pointing to the endpoint for deleting information about the user with ID .

Example Response:

After sending the above request, the server sends a response. An example response might look like this:

```
HTTP/.  No Content
```

In this response:

- `HTTP/.  No Content` \- this is the status code indicating that the user has been successfully deleted.

 Status Codes

REST API utilizes standard HTTP status codes to communicate the outcome of HTTP requests. The most common response codes in REST API include:

 xx (Successful Requests):

- ` OK` : Successful request. The server returns the requested data.

- ` Created` : Resource successfully created, and its URI is provided in the response header.

- ` No Content` : Successful request with no data returned (e.g., when deleting a resource).

 xx (Redirections):

- ` Moved Permanently` : Resource has been moved to a new URI, and the client should update its bookmarks.

- ` Found` or ` Temporary Redirect` : Resource is temporarily moved to another URI, and the client should use the new URI only for the current request.

 xx (Client-Side Request Errors):

- ` Bad Request` : Client's request is incorrect or cannot be processed by the server.

- ` Unauthorized` : Authentication is required to access the resource.

- ` Forbidden` : The client does not have permission to access the resource.

- ` Not Found` : The requested resource is not found on the server.

- ` Unprocessable Entity` : The request is correct, but the server cannot process it due to incorrect data in the request (e.g., invalid data format).

 xx (Server-Side Errors):

- ` Internal Server Error` : Internal server error preventing the request from being fulfilled.

- ` Bad Gateway` : Proxy server or gateway received an invalid response from an upstream server.

- ` Service Unavailable` : The server is temporarily unavailable, often used for maintenance.

There are many other status codes, each conveying specific information about the outcome of the request. REST API developers use these status codes to allow clients to appropriately respond to various situations and errors when interacting with the API.

 JSON

JSON (JavaScript Object Notation) is a lightweight data interchange format that is convenient for representing structured data. Here is an example of JSON syntax:

```
{
  "name": "John Doe",
  "age": ,
  "isStudent": false,
  "address": {
    "street": " Main St",
    "city": "Anytown",
    "zipCode": ""
  },
  "hobbies": ["reading", "hiking", "painting"],
  "scores": {
    "math": ,
    "science": ,
    "history": 
  }
}
```

In this example:

- JSON objects are enclosed in curly braces `{}`.

- Keys (field names) are enclosed in double quotes.

- Keys and values are separated by a colon.

- Key-value pairs are separated by commas, except for the last pair.

- JSON supports nested objects and arrays, as shown in the example with "address," "hobbies," and "scores."

JSON is commonly used for data exchange between servers and clients in web applications, as well as for storing configuration data, settings, and much more.

 Data Types and JSON

JSON поддерживает несколько базовых типов данных для представления информации. Вот основные типы данных в JSON:

\. Strings: Strings represent text and are enclosed in double quotes. For example:

```
"name": "John Doe"
```

\. Numbers: JSON supports both integers and floating-point numbers. For example:

```
"age": 
```

\. Boolean Values (Booleans): Boolean values can be `true` or `false`. For example:

```
"isStudent": false
```

\. Objects: Objects represent a collection of key-value pairs enclosed in curly braces. For example:

```
"address": {
  "street": " Main St",
  "city": "Anytown"
}
```

\. Arrays: Arrays represent an ordered list of values enclosed in square brackets. For example:

```
"hobbies": ["reading", "hiking", "painting"]
```

\. Null: The `null` value is used to represent the absence of a value or an empty value. For example:

```
"middleName": null
```