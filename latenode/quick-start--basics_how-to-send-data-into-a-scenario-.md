---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/how-to-send-data-into-a-scenario-/DTZDagiMzdthdFioie"
title: "How to send Data into a Scenario  – Latenode | Help Center"
---

 How to send Data into a Scenario

Methods for passing data into a scenario for automation.


In addition to running a scenario, you may need to send data into the scenario for further processing. Data can be passed in the body of a request (e.g., a POST request) to the URL of a Trigger on Webhook node.

Typically, you'll need to pass JSON objects or various files into the scenario.

A tool for sending POST requests, such as [Postman](https://www.postman.com/), can be used.

 Send JSON Objects

To send JSON using Postman to a Trigger on Webhook node in a scenario, follow these steps:

\. Create a scenario containing the Trigger on Webhook node;

\. In Postman:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Febf-d-ac-f-fcbda%FUntitled.png?table=block&id=d-a-d-c-eeace&cache=v)

- (  ) Select the request method, such as POST;

- (  ) Specify the URL of the Trigger on Webhook node as the request target;

- (  ) Go to the Body tab and select the Raw format for file transmission;

- (  ) Choose the JSON format for the request body ;

- (  ) Add text in JSON format;

\. Save and activate the scenario with the Trigger on Webhook node and, if necessary, click Run Once;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fabb-f--be-bdfbcd%FUntitled.png?table=block&id=d-a--af-decfeb&cache=v)

\. Send the request containing JSON.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdff-bf-a-bed-cefdde%FUntitled.png?table=block&id=d-a-e-b-fdbcef&cache=v)

The JSON will be transmitted into the scenario, and the output data of the Trigger on Webhook node will be the parameters of the transmitted JSON object or an array of objects, such as id, gender, etc.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffea---abf-edfcf%FUntitled.png?table=block&id=d-a--c-cfcadaa&cache=v)

 Send Files to a Scenario

To send files using Postman to a Trigger on Webhook node in a scenario, follow these steps:

\. Create a scenario containing the Trigger on Webhook node;

\. In Postman:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fda-f--abdd-ddbd%FUntitled.png?table=block&id=d-a-d-a-ddfca&cache=v)

- (  ) Select the request method, for example, POST.

- (  ) Specify the URL of the Trigger on Webhook node as the request target.

- (  ) Go to the Body tab and select the Form-data format for file transmission.

- (  ) Define the key Key and the required format as file.

- (  ) Add the file as the Value.

\. Save and activate the scenario with the Trigger on Webhook node and, if necessary, click Run Once;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feb-a--b-dfdeb%FUntitled.png?table=block&id=d-a--ad-dfbfee&cache=v)

\. Send a request containing the file.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fc-cba-fb-aa-ebadecf%FUntitled.png?table=block&id=d-a--bbe-fcdfd&cache=v)

As a result, the file will be transmitted into the scenario, and the output data of the Trigger on Webhook node will include the file's parameters, such as its name, size, and content.

The content is the main attribute of the file and is often what needs to be specified in the fields of other nodes.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fccb-f--aca-deebf%FUntitled.png?table=block&id=d-a-c-bee-efbdfbef&cache=v)