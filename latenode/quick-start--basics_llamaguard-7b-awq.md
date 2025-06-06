---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/llamaguard-b-awq/eHdUXtpgcdYmacBzZFiJ"
title: "llamaguard-b-awq – Latenode | Help Center"
---

 llamaguard-b-awq

AI model for security, moderation, and content filtering.


 Model Description

The `@hf/thebloke/llamaguard-b-awq` model includes two nodes:

- llamaguard-b-awq Prompt (preview)

- llamaguard-b-awq With History (preview)



Model ID: `@hf/thebloke/llamaguard-b-awq`. Llama Guard is a model for classifying the security of LLM prompts and responses using the security risk taxonomy.

  

Llama Guard is a model that helps determine how secure queries and responses are in large text datasets. It uses a special system called a "security risk taxonomy" to determine the level of danger to the information. For example, it can help determine if the text contains any threats, insults, or other potentially harmful elements. This can be useful, for example, for filtering content on social networks or detecting malicious messages in chat rooms.

  

 Example of launching a node

Let's run the llamaguard-b-awq With History (preview) node to process the text and generate a response with parameters:

- Dialogue History \- `[{"role":"system","content":"Determine the percentage of aggression in the text"}]`;

- User Prompt - _The kindness people show to each other is an integral part of life. It is important to help and support people in difficult situations, as these people then support others;_

- Max Tokens (Answer Size) \- .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fa-b-d--eddafff%FUntitled.png?table=block&id=ad-a--bc-ceffddf&cache=v)

The output of the node execution is JSON:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdd--e-fa-baac%FUntitled.png?table=block&id=ad-a-cb-bddf-dbba&cache=v)

- with a response to the `"response"` request;

- with the status of the action `"success": true`.

JSON

```
{
  "result": {
    "errors": [],
    "messages": [],
    "result": {
      "response": " safe"
    },
    "success": true
  }
}
```