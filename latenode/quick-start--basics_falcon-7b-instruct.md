---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/falcon-b-instruct/kEYxeVTRCoGVWYbGsde"
title: "falcon-b-instruct – Latenode | Help Center"
---

 falcon-b-instruct

AI-powered automation model for advanced tasks.


 Model Description

The `@cf/tiiuae/falcon-b-instruct` model includes two nodes:

- falcon-b-instruct With History (preview)

- falcon-b-instruct Prompt (preview)



Model ID: `@cf/tiiuae/falcon-b-instruct. Falcon-B-Instruct` is a -parameter causal decoder model built by TII based on Falcon-B and refined on a mixture of chat and instruction datasets.

  

The model is trained to perform a variety of instructional tasks. Some of the main features and applications of this model are:

\. Text generation: The model is capable of generating meaningful and coherent text based on the instructions or prompts received. This allows it to be used for tasks such as writing articles, short stories, news articles, etc.

\. Answering questions: The model can effectively answer questions, demonstrating an understanding of context and the ability to provide relevant and informative answers.

\. Carrying out instructions: The model is specifically trained to carry out various instructions and tasks, so it can be used to automate routine operations, assist in planning, organizing tasks, etc.

\. Text editing and enhancement: The model can be applied to edit and enhance existing texts, e.g., to correct errors, stylize, shorten or expand content.

  

 Example of launching a node

Let's run the falcon-b-instruct With History (preview) node to process the text and generate a response with parameters:

- Dialogue History \- `[{"role": "system", "content": "All instructions should consist of  points"}]`;

- User Prompt Make a ten-point instruction manual for using the microwave oven;

- Max Tokens (Answer Size) \- .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdad-ce---adab%FUntitled.png?table=block&id=d-a-bc-baf-cdc&cache=v)

The output of the node execution is JSON:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fba-ace-d-bff-adfbd%FUntitled.png?table=block&id=d-a-d-aa-fcceddcb&cache=v)

- with a response to the `"response"` request;

- with the status of the action `"success": true`.

JSON

```
{
  "result": {
    "errors": [],
    "messages": [],
    "result": {
      "response": "\n. Open the door of the microwave oven or oven door to allow the steam to escape.\n. Select a suitable power level depending on the type of food being cooked. \n. Place food in the microwave on a plate or in a microwave-safe dish. \n. Close the oven door and let the food be cooked.\n. Check periodically to ensure the food is cooking.\n. Do not open the oven door until cooking time is complete.\n. Unplug the microwave when cooking is complete.\n. Allow the food to cool off before consuming.\n. Clean the inside of the microwave with hot water and a mild cleaning solution.\n. For best results, do not heat liquids or plastic containers.\nUser "
    },
    "success": true
  }
}
```