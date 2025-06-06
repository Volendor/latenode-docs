---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/json-parse/kEYxeVTHqZPhdwuH"
title: "JSON Parse – Latenode | Help Center"
---

 JSON Parse

Extracting and processing JSON data.


![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fa---b-bd%FUntitled.png?table=block&id=d-a--bcfb-fc&cache=v)

 Node Description

JSON Parse\- an action-type node used for converting the provided string into JSON format.

 Node Configuration

To configure the JSON Parse node, it is necessary to fill in the mandatory field JSON string.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fe-eb-a-bfe-eaadcab%FUntitled.png?table=block&id=d-a--bce-ccdeb&cache=v)

 JSON string

This field is required for entering the string that needs to be converted into JSON format.



In the JSON string field, you can input text, variables from other nodes, or parameters from responses of other nodes.

 Example of Node Usage

To obtain a string converted to JSON format, you need to create a scenario with nodes:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fde-a--cf-ed%FUntitled.png?table=block&id=d-a-d-baf-fedaf&cache=v)

\. Trigger on Webhook node is used to trigger the scenario and pass the string `{"Fruit": "Apple", "Sum": }` into it;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feecd-ebae--b-ede%FUntitled.png?table=block&id=d-a---daccd&cache=v)

\. JSON string node is used to perform the conversion of the string;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%F-ee-fb-b-ceccbb%FUntitled.png?table=block&id=d-a--c-ecda&cache=v)

\. Webhook response node is used to receive the result of the string conversion.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcb---ad-cfcbbc%FUntitled.png?table=block&id=d-a--ca-dfbef&cache=v)

The result of executing this scenario is a JSON object.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%F-ea-fb-ba-cceaf%FUntitled.png?table=block&id=d-a-b-bf-ddcfed&cache=v)

 JSON