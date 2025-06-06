---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/trigger-on-run-once/kEYxeVTKGxXZXRwUdZ"
title: "Trigger on Run once – Latenode | Help Center"
---

 Trigger on Run once

Executing a one-time automation scenario.


![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcd-ebd-b-f-eaaaaa%FUntitled.png?table=block&id=d-a--b-dfcb&cache=v)

 Node Description

Trigger on Run once is an trigger-type node that allows manually starting a scenario by clicking the Run once button. Unlike other triggers, it does not require external requests or specific events to activate. The node allows passing input parameters (text or files) into the scenario.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcbc-fb-ff-ab-beeed%FUntitled.png?table=block&id=d-a-d-fd-faf&cache=v)

 Example of Node Usage

 Example : Processing Text with JavaScript

In this example, the user inputs text, the scenario processes it using JavaScript, and the result is stored as a variable.

 Scenario Structure

. Trigger on Run once – Starts the scenario manually and receives text input.

. JavaScript – Processes the text (e.g., converts to uppercase or counts words).

 Scenario Setup

 \. Configuring the Trigger on Run Once Node

- Click on the Trigger on Run once node.

- In the Params section, add a text parameter.

- Specify a name for the variable (e.g., `input_text`).

- Enter a sample text value for testing.

![Notion Image](https://www.notion.so/image/attachment%A-fa-c-ac-cdade%Abrave_QyymmpVG.png?table=block&id=bd-a-e-a-efdfdb&cache=v)

- Click Save and Run once to pass the data into the scenario.

![Notion Image](https://www.notion.so/image/attachment%Ae-b-a-a-caecfa%Abrave_adWorkYBa.png?table=block&id=bd-a-c-ed-cacdbb&cache=v)

 \. Processing Data with JavaScript

Add a JavaScript node and insert the following code and press Generate params:

```
/ @CustomParams
{
  "text": {
    "key": "text",
    "title": "Text",
    "description": "Text to convert to uppercase",
    "type": "string"
  }
}
/
export default async function run({ data }) {
  const { text } = data;

  // Validate the input text
  if (!text) {
    throw new Error('The text parameter is required.');
  }

  const upperCaseText = text.toUpperCase();

  return { upperCaseText };
}
```

- Pass the input variable containing text.

![Notion Image](https://www.notion.so/image/attachment%Acea--d-ab-ca%Abrave_fNDpJbftqJ.png?table=block&id=bd-a-c-ba-fdb&cache=v)

- Run the scenario.

- The output will be the formatted text.

![Notion Image](https://www.notion.so/image/attachment%Abf-e-ed-baf-ffba%Abrave_cZvEmRyUD.png?table=block&id=bd-a-e--ebcfff&cache=v)

  

 Example : Recognizing Image Content Using AI

In this example, an image is uploaded and sent to an AI service for content recognition.

 Scenario Structure

. Trigger on Run once – Starts the scenario manually and allows image upload.

. AI Image Processing – Sends the image to an AI service for recognition.

 Scenario Setup

 \. Configuring the Trigger on Run Once Node

- Click on the Trigger on Run once node.

- In the Params section, add a File parameter.

- Specify a name for the variable (e.g., `input_image`).

![Notion Image](https://www.notion.so/image/attachment%Afbaae-be-a-a-afedba%Abrave_iSmmntu.png?table=block&id=bd-a--bcc-cfdb&cache=v)

- Upload a sample image for testing.

![Notion Image](https://www.notion.so/image/attachment%Acf---c-dcffafdf%Abrave_xVkNOXqIo.png?table=block&id=bd-a-a-b-eadfcb&cache=v)

- Click Save and Run once to pass the data into the scenario.

![Notion Image](https://www.notion.so/image/attachment%Ab-cd--b-dccc%Abrave_CfbabbYTM.png?table=block&id=bd-a-f-bb-fabaefa&cache=v)



Also you can see quick image preview

![Notion Image](https://www.notion.so/image/attachment%Abffb-eb-d-d-efcbe%Abrave_CKLWXBscvK.png?table=block&id=bd-a-a-eb-cdddaec&cache=v)

 \. Sending the Image to AI for Analysis

- Add an AI-based image recognition node (e.g., GPT or another service).

![Notion Image](https://www.notion.so/image/attachment%Afbe-abb-a-ba-feceac%Abrave_CZQnoBLMn.png?table=block&id=bd-a--acee-eedecb&cache=v)

- Pass the file content, filename, and prompt for analysis into the corresponding fields.

![Notion Image](https://www.notion.so/image/attachment%A-fc-c-af-cfdac%Abrave_jbhVsoOw.png?table=block&id=bd-a--ac-feb&cache=v)

- Run the scenario to receive the recognized result.

![Notion Image](https://www.notion.so/image/attachment%Addb-f-f-adcb-ebe%Abrave_vrDWVtYYk.png?table=block&id=bd-a--a-fbcef&cache=v)

  

 Node Behavior on Execution

- The first execution stores the processed values.

- Subsequent executions overwrite previous values.

- Uploaded files are processed and passed into the scenario with metadata.

These examples demonstrate how the Trigger on Run once node can be used to process text and file data within automated workflows while saving results for later use.