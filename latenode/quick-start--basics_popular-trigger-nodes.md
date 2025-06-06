---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/popular-trigger-nodes/DTZDagfchEhurkYw"
title: "Popular trigger nodes – Latenode | Help Center"
---

 Popular trigger nodes

Commonly used trigger nodes and their role in automation.


Table of contents:

. Basics

. Trigger on Webhook

. Trigger on Schedule

. New Row Added

. New or Modified Records

. New Page in Database

. New or Modified Files

 \. Basics

To run the scenario, you need to add a trigger node. Scenarios with trigger nodes in active status are executed every  minutes, except for the following types:

- Trigger on Webhook: The scenario starts executing after receiving a request;

- Trigger on Schedule: The scenario starts executing at a specified time according to the schedule.

- Trigger on Run Once: The scenario starts executing when you click the Run once button.

- Triggers with Instant Comment: The scenario starts executing immediately when the trigger event occurs.

Trigger type nodes are displayed in the node selection window under the Triggers tab:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fea-d-c--ddcdd%FUntitled.png?table=block&id=d-a--c-fcebdb&cache=v)

 \. Trigger on Webhook

To trigger a scenario using the Trigger on Webhook node, you need to send an HTTP request to the URL of the Trigger on Webhook node. The request can contain or not contain data to be passed to the scenario.

For example, let's create a scenario that processes data in JSON format.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feb-ca-b-ad-dfebfe%FUntitled.png?table=block&id=d-a-b-cc-cdfed&cache=v)

You need to add three nodes:

- (  ) Trigger on Webhook, for sending data in JSON format using the POST method and triggering the scenario;

```
{
  "id": ,
  "first_name": "Jeanette",
  "last_name": "Penddreth",
  "email": "jpenddreth@census.gov",
  "gender": "Female",
  "ip_address": "..."
}
```

- (  ) Java Script, for processing the data with code;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcee-fbf-c-cd-bbee%FUntitled.png?table=block&id=d-a-d-d-eebdda&cache=v)

```
export default async function run({execution_id, input, data}) {
const SurName = data["{{.body.last_name}}"];
const Name = data["{{.body.first_name}}"];
const FullName = Name +' '+ SurName;
const Email = data["{{.body.email}}"];

    const resultRawJSON = JSON.stringify({
      "FullName": FullName,
      "Email": Email,
    });

    return {
      resultRawJSON
    }
}
```

- (  ) Webhook response, for generating the scenario's response to the incoming request.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fafad-c-f-a-aebca%FUntitled.png?table=block&id=d-a-fc-a-dfffa&cache=v)

The result of the scenario's operation will be transformed data in JSON format:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdbe-c-d-bb-fbdec%FUntitled.png?table=block&id=d-a-fa-a-fb&cache=v)

 \. Trigger on Schedule

The Trigger on Schedule node triggers the scenario based on a configured schedule without passing any incoming data to the scenario.

For example, let's create a scenario that:

- Runs every day at :.

- Creates a page for a daily report in Notion.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbae-d--f-cbccccf%FUntitled.png?table=block&id=d-a-ad-b-dba&cache=v)

You need to add two nodes:

- (  ) Trigger on Schedule, to trigger the scenario daily at a specific time;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fb-ac-de-bc-bed%FUntitled.png?table=block&id=d-a-b-bce-cabdebf&cache=v)

- (  ) Create Page, to create a page with the current date as the title.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fb-a-e-aa-edcafa%FUntitled.png?table=block&id=d-a-fd-e-caedb&cache=v)

The result of the scenario execution is the added page in Notion:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdcb-ee-cf-f-bda%FUntitled.png?table=block&id=d-a-db-bfbd-dfadfd&cache=v)

 .New or Modified Records

The New or Modified Records node triggers the execution of a scenario when a new record is added to the AirTable database table.

As an example, let's create a scenario that:

. Is triggered when a new row is added to the database table.

. Takes one of the attributes from the added row and adds it to a Google spreadsheet.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fefc-ae-cf-a-fddbc%FUntitled.png?table=block&id=d-a--ffa-ccdfe&cache=v)

You need to add two nodes:

- (  ) New or Modified Records, to trigger the scenario and obtain data about the added row;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fc-dd-a-a-feaba%FUntitled.png?table=block&id=d-a--aa-edcfee&cache=v)

- (  ) Add Single Row, to add the attribute of the row to the Google spreadsheet.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffde-f-cf-c-ecd%FUntitled.png?table=block&id=d-a--b-caeb&cache=v)

The result of the scenario's execution is the added attribute of the row in a cell of the spreadsheet:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffde-cbe-a-be-dafada%FUntitled.png?table=block&id=d-a-a--ebbe&cache=v)

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fd--f-b-ecad%FUntitled.png?table=block&id=d-a-d-bd-dedca&cache=v)

 \. New Row Added

The New Row Added node triggers the scenario when a new row is added to the specified sheet or sheets in a Google spreadsheet.

For example, let's create a scenario that:

- Is triggered when a new row is added to a Google spreadsheet and retrieves data about that row;

- Converts and returns the data in JSON format.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fce-d-a--daacaf%FUntitled.png?table=block&id=d-a-f-bea-edadbe&cache=v)

You need to add three nodes:

- (  ) New Row Added, to trigger the scenario and get detailed information about the added row;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fef-cb---efebcca%FUntitled.png?table=block&id=d-a-e-a-dadb&cache=v)

- (  ) JavaScript, to transform the row's information into the required format using code;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbb-ad--fd-bbee%FUntitled.png?table=block&id=d-a--e-fccd&cache=v)

```
export default async function run({execution_id, input, data}) {
const Row = data["{{.data.newRow}}"];
const Count = data["{{.meta.summary}}"];

    const resultRawJSON = JSON.stringify({
      "Row": Row,
      "Count": Count,
    });

    return {
      resultRawJSON
    }
}
```

- (  ) Webhook response, to return the execution response of the scenario.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcdc-ce-d-b-fcaacbbd%FUntitled.png?table=block&id=d-a---feafb&cache=v)

The result of the scenario execution is a JSON containing the content of the added row and its ordinal number:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fadebb-fd-cd-acb-dfbf%FUntitled.png?table=block&id=d-a-fa-bc-fdbb&cache=v)

```
{"Row":"[\"Catherine Smitt\"]","Count":"New row  in Sheet"}
```

 \. New Page in Database

Node New Page in Database triggers the execution of the scenario when a page is added to the Notion database.

For example, let's create a scenario that:

- Runs when a new page is added to the Notion database;

- Converts and returns data about the created page in JSON format.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffb--a-cb-da%FUntitled.png?table=block&id=d-a-d--ceccba&cache=v)

You need to add three nodes:

- (  ) New Page in Database, to triggers the scenario and retrieves data about the added page;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcbe-f-a--fecaefc%FUntitled.png?table=block&id=d-a-ca-c-ddcc&cache=v)

- (  ) JavaScript, to transform the information into the required format using code;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffda-cd-c-f-c%FUntitled.png?table=block&id=d-a-a-be-dffdbdd&cache=v)

```
export default async function run({execution_id, input, data}) {
const Row = data["{{.data.properties.Fruit.title.[].text.content}}"];
const Edited = data["{{.data.last_edited_time}}"];

    const resultRawJSON = JSON.stringify({
      "Row": Row,
      "Edited": Edited,
    });

    return {
      resultRawJSON
    }
}
```

- (  ) Webhook response, to returning the scenario execution response.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffca--ec-aa-eae%FUntitled.png?table=block&id=d-a-da-aeae-ecbdef&cache=v)

The result of the scenario execution is a JSON with the necessary attributes of the added page:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fec-efd-c--afeed%FUntitled.png?table=block&id=d-a-a-bad-ccfcac&cache=v)

```
{"Row":"Pineapple","Edited":"--T::.Z"}
```

 \. New or Modified Files

The New or Modified Files node triggers the scenario if:

- a file on Google Drive has been edited;

- a new file has been added to Google Drive.

For example, let's create a scenario that:

- runs after adding a new file to Google Drive;

- returns the current list of file names on Google Drive, taking the added file into account.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fd-bed-a-ad-efecb%FUntitled.png?table=block&id=d-a-c-af-efca&cache=v)

You need to add three nodes:

- (  ) New or Modified Files, to trigger the scenario when a file is added.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdfc-fbb-ba-bd-aba%FUntitled.png?table=block&id=d-a-f-aba-daf&cache=v)

- (  ) List Files, to get the current list of folder files and their attributes as an array;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbce-bc-b-f-efaaf%FUntitled.png?table=block&id=d-a-ba-a-eadb&cache=v)

- (  ) Iterator, to sequentially process the array from the List Files node ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ff-de-bd--cfdab%FUntitled.png?table=block&id=d-a--a-eabdcd&cache=v)

- (  ) SetVariables, to create an array of file names;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdfb-bf-cb-a-cbeecb%FUntitled.png?table=block&id=d-a-a-ba-fcbecdde&cache=v)

- (  ) Webhook response, to return the scenario execution response.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcf-a-b-bf-abf%FUntitled.png?table=block&id=d-a-e-ea-fab&cache=v)

The result of the execution is an array of file names in the Google Drive folder, including the name of the added file:

```
["Add new ","Add new","TestJson.json","TestJson.json"]
```