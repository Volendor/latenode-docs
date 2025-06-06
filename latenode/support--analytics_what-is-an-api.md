---
url: "https://help.latenode.com/support--analytics/DTZDagfcsSJdCyLcX/what-is-an-api/DTZDagfYkrtURsCsP"
title: "What is an API? – Latenode | Help Center"
---

 What is an API?

Introduction to APIs and their role in automation.


 Two programs

An API is a set of rules and instructions that allow two programs to interact with each other.

An example of two programs could be the platform Latenode and the service [OpenWeather](https://openweathermap.org/), which provides weather data.

The benefit of an API is that two programs can exchange data and call each other's functions without needing to know how exactly those functions are implemented. If the Latenode platform (or its user) needs to know the current weather, it is enough to know that the [OpenWeather](https://openweathermap.org/) service provides such information. Knowing how exactly this information is generated or calculated is not necessary.

Programs that provide APIs usually maintain documentation so that users can understand how to use a particular API.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcafd-dec-aa-be-fdf%FUntitled.png?table=block&id=d-a---dea&cache=v)

 Request - response

All communication between programs is based on the request-response system.

One program sends a request to another program, specifying the necessary parameters and actions that need to be performed. In our case, weather information is needed for the Latenode platform, and a request to the [OpenWeather](https://openweathermap.org/) service can be formed using the HTTP Requestnode.

The request contains information about what needs to be done, such as getting data, updating data, or performing some operations. It may also contain parameters that determine what specific data or actions are required.

Requests can be of different types. The type of request determines its capabilities, for example:

- GET\- requests information from the program. For example, you can send a GET request to get a list of products on the website.

- POST\- sends data to the program for processing. For example, when placing an order, you send a POST request with information about the products and delivery address.

- PUT\- updates data in the program. For example, you can send a PUT request to change information in your profile.

- DELETE\- deletes data from the program. For example, you can send a DELETE request to delete your account on the website.

The HTTP Request node, designed to form a request, repeats the parameters of this request in its fields. Since weather information is only required to be obtained and no registration is needed to get the information, a GET request of the simplest structure can be used:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faeb-e-c--aaedc%FUntitled.png?table=block&id=d-a--af-fdbceabe&cache=v)

- (  ) URL \- the endpoint to which the request will be sent, including the city whose weather needs to be obtained;

- (  ) Request method - GET.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fe-bd-cb-bf-addddbae%FUntitled.png?table=block&id=d-a-ec-ff-edbcb&cache=v)

The response, in turn, contains the result of the operation performed or the requested data. It may include a status (e.g. successfully completed or with an error) as well as other information such as data or messages.

Status codes are standard codes that help interpret the request result and determine further actions. Here are some of the most common status codes:

- xx - These are successful responses indicating the successful completion of the request.

- xx - These responses indicate redirection of the request or require additional actions from the client.

- xx - These responses indicate issues with the client's request.

- xx - These responses indicate problems on the server side while processing the request.

Let's run the HTTP Request node and see what response the [OpenWeather](https://openweathermap.org/) service returns to the request.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcabee-da-ad-bd-bffaa%FUntitled.png?table=block&id=d-a--f-ddeddda&cache=v)

As in our example, responses are most often represented as JSON objects. They differ from plain text only in that the information in them is structured (the main information is contained in the body), and there is a response status, for example,  (this is a successful response indicating that the request was executed successfully and the program sends back the necessary information).

 Response Handling

Services often provide excessive data, as in our example. We only needed to retrieve the temperature, but we also received a plethora of system information, cloudiness, coordinates, visibility, and wind speed.

```
{
"base": "stations",
"clouds": {
"all": 
},
"cod": ,
"coord": {
"lat": .,
"lon": -.
},
"dt": ,
"id": ,
"main": {
"feels_like": .,
"humidity": ,
"pressure": ,
"temp": .,
"temp_max": .,
"temp_min": .
},
"name": "London",
"sys": {
"country": "GB",
"id": ,
"sunrise": ,
"sunset": ,
"type": 
},
"timezone": ,
"visibility": ,
"weather": [\
{\
"description": "overcast clouds",\
"icon": "n",\
"id": ,\
"main": "Clouds"\
}\
],
"wind": {
"deg": ,
"speed": .
}
}
```

This is not a problem and can be addressed by either looking for another "option" API in the [OpenWeather](https://openweathermap.org/) documentation, or by processing the incoming data, extracting the necessary information with the help of JavaScript node.

 Authorization

Some programs may provide an API accessible to all users, allowing them to use its functionality without the need for authorization.

However, many programs require authorization to access their functionality. This helps manage access to confidential information, protect user data, and prevent abuse of the service. After authorization, the user can send requests to the program's API, retrieve information, update data, and perform other operations according to the access rights granted to them.

 Result

The outcome of API interaction between programs can involve data exchange, executing specific functions, or receiving a response to a request. In our example, when utilizing a weather service API, we sent a request via the API about the weather in a specific city and received, among other information, the current weather in that city as a response.