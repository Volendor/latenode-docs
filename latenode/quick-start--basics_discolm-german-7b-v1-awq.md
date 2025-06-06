---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/discolm-german-b-v-awq/kEYxeVTYcsMwQTDR"
title: "discolm-german-b-v-awq – Latenode | Help Center"
---

 discolm-german-b-v-awq

AI model tailored for German language processing.


 Model Description

The `@cf/thebloke/discolm-german-b-v-awq` model includes two nodes:

- discolm-german-b-v-awq Prompt (preview)

- discolm-german-b-v-awq With History (preview)



Model ID: `@cf/thebloke/discolm-german-b-v-awq`. This DiscoLM German b model, based on Mistral, has a large data capacity and is capable of generating German texts with high quality. AWQ is a low bit weight quantization method that supports -bit quantization, which improves the efficiency of the model, reduces resource consumption and increases the speed of the model.

  

The model is a language model created for processing and understanding the German language. The main features and uses of the model are:

\. German language comprehension and processing: the model is capable of understanding and generating German text by performing tasks related to natural language processing, such as translation, question answering, summarization, etc.

\. Use in various applications: the model can be used in chatbots, information retrieval systems, automatic translation tools and other applications where German language processing is required.

  

 Example of launching a node

Let's run the discolm-german-b-v-awq Prompt (preview) node to process text and generate a response with parameters:

- User Prompt \- _Write some proverbs in German_

- Max Tokens (Answer Size) \- .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdcc-bbe--ac-dfd%FUntitled.png?table=block&id=d-a-c-bda-ffffeea&cache=v)

The output of the node execution is JSON:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feffb-bd-d-e-fbe%FUntitled.png?table=block&id=d-a--bb-cf&cache=v)

- with a response to the `"response"` request;

- with the status of the action `"success": true`.

JSON

```
{
  "result": {
    "errors": [],
    "messages": [],
    "result": {
      "response": "Here are some popular German proverbs:\n\n. \"Reden ist Silber, Schweigen ist Gold.\" - The old saying suggests that communication is important, but discretion is even more valuable.\n. \"Wo viel Licht ist, da ist auch viel Schatten.\" - This proverb is usually used to warn that where there is light, there are also dark parts. \n. \"Die Welt steht still, wenn sich die Zeiger drehen.\" - The phrase underlines the importance of time and the preciousness of life.\n. \"Erstens kommt es anders, zweitens als man denkt.\" - This proverb means that predictions are often not accurate and outcomes differ from expectations.\n. \"Gut Ding will Weile haben.\" - It implies that quality work takes its time, and rushing could compromise results.\n. \"Kleider machen Leute.\" - This proverb suggests that dress is an important factor in shaping a person's image or status in society.\n. \"Vor unlauter Kreide steh' ich nicht.\" - This means being honest, and not bending the truth to win an argument."
    },
    "success": true
  }
}
```