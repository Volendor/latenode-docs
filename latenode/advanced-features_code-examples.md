---
url: "https://help.latenode.com/advanced-features/DTZDaggyNRLGe/code-examples/DTZDagfDxtGsQdtCh"
title: "Code examples – Latenode | Help Center"
---

 Code examples

Collection of JavaScript code snippets for common automation tasks.


Table of contents:

. Integration with Mongo DB Atlas

. JS Node. Make parallel HTTP requests

. Processing and Transforming Data from the Previous Node

 \. Integration with Mongo DB Atlas

```
import { MongoClient } from 'mongodb';

export default async function run({execution_id, input, data}) {

    // MongoDB Connection String
    // Structure:
    // mongodb+srv://USERNAME:PASSWORD@CLUSTER_ADDRESS/DATABASE
    // USERNAME: User's name for authentication
    // PASSWORD: Password for authentication
    // CLUSTER_ADDRESS: Address to your MongoDB cluster
    // DATABASE: Default database to use (optional)
    const connectionString = 'mongodb+srv://USERNAME:PASSWORD@CLUSTER_ADDRESS/DATABASE';

    // Connecting to the MongoDB client
    const client = await MongoClient.connect(
      connectionString,
      { useNewUrlParser: true, useUnifiedTopology: true } // Options for the connection
    );

    // Selecting the 'parsing-m' database and 'apps' collection
    const coll = client.db('parsing-m').collection('apps');

    // Finding the last  records where processed is not equal to true
    const filter = {processed:{$ne: true}};
    // Sorting by the "sort" field in descending order (replace "sort" with the actual field name)
    const cursor = coll.find(filter).sort({"sort": -}).limit();

    // Converting the cursor to an array to retrieve the result
    const result = await cursor.toArray();

    // Closing the connection to the MongoDB client
    await client.close();

    return result;
}
```

 \. JS Node. Make parallel HTTP requests

You can make parallel HTTP requests using JS node.

```
/
 This code is structured to handle multiple HTTP GET requests concurrently,
 using axios to perform the requests and Promise.all to manage them simultaneously.
/

// Importing the axios library for making HTTP requests
import axios from "axios";

export default async function run({ execution_id, input, data }) {
  // Defining an array of URLs to make HTTP requests to
  const urls = ['https://dummyjson.com/carts', 'https://dummyjson.com/users', 'https://dummyjson.com/quotes'];

  try {
    // Using Promise.all to perform simultaneous HTTP requests to the URLs defined above
    // The map function applies 'httpRequest' to each URL in the 'urls' array
    const results = await Promise.all(urls.map(url => httpRequest(url)));

    // Returning the results of the HTTP requests
    // This is where you can handle the results as needed in your application
    return {
      res: results
    };
  } catch (error) {
    // Logging any errors to the console
    console.error(error);
    // Rethrowing the error to be handled by the caller of this function
    throw error;
  }

  // Defining an asynchronous function 'httpRequest' to handle individual HTTP requests
  async function httpRequest(rawURL) {
    try {
      // Making a GET request to the provided URL using axios
      const response = await axios({
        method: "GET",
        url: rawURL
      });
      // Returning the data part of the response
      // This can be modified according to the needs of the application
      return response.data;
    } catch (error) {
      // Logging any errors encountered during the HTTP request
      console.error(error);
      // Rethrowing the error to be handled by the caller of 'httpRequest'
      throw error;
    }
  }
}
```

 \. Processing and Transforming Data from the Previous Node

```
export default async function run({execution_id, input, data}) {
// const - is the syntax for creating a constant
// SurName - the name of the constant
// data["{{.body.Surname}}"] - the value of the constant. The expression is added automatically when you click on "SurName" in the Data window.
const SurName = data["{{.body.Surname}}"];
const Name = data["{{.body.Name}}"];
const FullName = Name +' '+ SurName;
const Email = data["{{.body.Email}}"];
const LastAction = data["{{.body.LastAction}}"];
const message = `Hi, ${FullName}! The last time you visited Latenode ${LastAction}.`;

// JSON assembly
    const resultRawJSON = JSON.stringify({
      "from_email": "test@gmail.com",
      "to": Email,
      "subject": "Latenode",
      "text": message,
    });

//Returning values
    return {
      resultRawJSON
    }
}
```