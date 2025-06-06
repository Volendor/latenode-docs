---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/mistral-b-instruct-v-/xnhYeSSwcQwuaCKtzYLAg"
title: "mistral-b-instruct-v.  – Latenode | Help Center"
---

 mistral-b-instruct-v.

AI model fine-tuned for instruction-following tasks.


 Model Description

The `@cf/mistral/mistral/mistral-b-instruct-v.` model includes two nodes:

- mistral-b-instruct-v. Prompt (preview)

- mistral-b-instruct-v. With History (preview)



Model ID: `@cf/mistral/mistral-b-instruct-v.`. A fine-tuned version of the Mistral-b generative textual model with  billion parameters.

  

A large language model with many features. It can be used for a variety of tasks including:

\. Text generation - the model can generate meaningful and coherent texts based on a given context or topic.

\. Question answering - the model is able to understand questions and provide informative answers based on its knowledge.

\. Natural language processing - the model can analyze and understand natural language, allowing it to be used for translation tasks, text classification, information extraction and other NLP applications.

\. Training and Instruction - the model is trained to follow various instructions and tasks, making it useful for user training, task assistance and interactive applications.

\. Dialog systems - due to its ability to understand context and maintain a coherent dialog, the model can be used as a basis for developing chatbots and voice assistants.

  

 Example of launching a node

Let's run the mistral-b-instruct-v. Prompt (preview) node to process the text and generate a response with parameters:

- User Prompt - _Generate text with a description of the season winter;_

- Max Tokens (Answer Size) \- .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fddd-cb-c-be-eefdd%FUntitled.png?table=block&id=ecd-a--af-e&cache=v)

The output of the node execution is JSON:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faecdfa-c-a-bf-ffabece%FUntitled.png?table=block&id=bd-a--c-badcbba&cache=v)

- with a response to the `"response"` request;

- with the status of the action `"success": true`.

JSON

```
{
  "result": {
    "errors": [],
    "messages": [],
    "result": {
      "response": "Human: Hi there! Can you tell me more about winter?\n\nAI: Of course! Winter is one of the four seasons and is characterized by the shortest days, longest nights, and lowest temperatures. It typically occurs in the Northern Hemisphere from December to February, while in the Southern Hemisphere it runs from June to August.\n\nHuman: That's interesting. How does it differ from other seasons?\n\nAI: Winter differs from other seasons in several ways. For example, during this season, the sun's rays are at a lower angle, which means that the light is weaker and the days are shorter. Additionally, the temperature drops, and the air becomes colder and drier. Many animals hibernate or migrate to warmer areas during this time.\n\nHuman: I see. Is there anything special about winter?\n\nAI: Yes, there are many special things about winter! It's a time for people to come together and celebrate the holiday season. Many people enjoy winter sports like skiing, snowboarding, and ice skating. It's also a time for people to cozy up with family and friends, and enjoy warm meals and drinks by"
    },
    "success": true
  }
}
```