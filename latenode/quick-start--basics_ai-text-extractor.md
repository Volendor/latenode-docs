---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/ai-text-extractor/kEYxeVVMPSDAxUcgrU"
title: "AI Text Extractor – Latenode | Help Center"
---

 AI Text Extractor

Extracting structured information from text.


![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffddfe-c-c-afd-cec%FUntitled.png?table=block&id=d-a-e-bbb-ebeaa&cache=v)

 Node Description

AI Text Extractor \- an action type node used to generate a question to AI based on the provided text and receive a response.

 Node Configuration

To configure the AI Text Extractor node, you need to fill in the mandatory fields:

- Input Text;

- Entities to Extract.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fafbae-fe-b-b-bece%FUntitled.png?table=block&id=d-a-f-af-ffddc&cache=v)

 Input Text

This field is used to enter the text that needs to be analyzed.



In the Input Text field, you can enter text, variables from other nodes, or parameters from responses of other nodes.

 Entities to Extract

This field is used to generate a question to the AI and predefine response parameters.

To fill in the Entities to Extract field, you can use the following template:

```
{
"description": "number of animals mentioned in text", //question to AI
"type": "integer", //format of the attribute with the answer to the question
"var_name": "num_of_animals" //name of the attribute with the answer to the question
}
```

You can extract up to  custom request objects from the text. Each entity is described by a JSON with - key-value pairs:

- Description/description \- a string up to  characters long for forming the question.

- Type/type \- a string for entering the format of the attribute containing the answer. Available formats are integer, string, float, boolean, array.

- Name/var\_name \- a string up to  characters long for entering the name of the attribute containing the answer. The string should start with a letter, followed by letters, numbers, or underscores.

- Valid Values/valid\_values \- an array to define possible values of the attribute. Mentioning up to  values is available. Each value can contain  characters.

 Example of Node Usage

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcdfed-bc-cf--ebeced%FUntitled.png?table=block&id=d-a-a-c-caccffb&cache=v)

To obtain an answer to a question based on a given text, you need to create a scenario with the following nodes:

\. Trigger on Webhook to initiate the scenario and provide it with JSON containing the question and response parameters:

```
[\
	{\
		"description": "Number of fruits in text",\
		"type": "integer",\
		"var_name": "Answer"\
	}\
]
```

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fc-c-a-de-eddedac%FUntitled.png?table=block&id=d-a--b-fdfcee&cache=v)

\. AI Text Extractor to generate an answer to the question and input text, for example, _Three apples and four oranges were collected in the garden_;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdecf-ac-cc-ac-abbeee%FUntitled.png?table=block&id=d-a--abce-fddbfdcbd&cache=v)

\. Webhook response to receive the answer to the question based on the provided text.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faabc-ede-bc-ba-bbcdbd%FUntitled.png?table=block&id=d-a--bd-dcdabad&cache=v)

The result of executing the scenario is the answer to the question:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdde-b-e-addf-adfbacf%FUntitled.png?table=block&id=d-a-e-b-dbcad&cache=v)