---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/neural-chat-b-v--awq/kEYxeVTgJFacXFrHm"
title: "neural-chat-b-v--awq – Latenode | Help Center"
---

 neural-chat-b-v--awq

AI-driven chatbot model for automation workflows.


 Model Description

The `@hf/thebloke/neural-chat-b-v--awq` model includes two nodes:

- neural-chat-b-v--awq Prompt (preview)

- neural-chat-b-v--awq With History (preview)



Model ID: `@hf/thebloke/neural-chat-b-v--awq`. This model is a fine-tuned B parametric LLM on the Intel Gaudi  processor from mistralai/Mistral-B-v. on the Open-Orca/SlimOrca open-source dataset.

  

The model is trained for natural language conversations. Its main purpose is to maintain meaningful conversations with people on a variety of topics. Here are some key features and purpose of this model:

\. Generating coherent and contextually relevant responses in a dialog. The model is adept at maintaining a coherent conversation given the previous context.

\. A wide range of topics, from everyday issues to specialized areas of knowledge. The model can reason about a multitude of topics due to training on a huge amount of textual data.

\. Application for various tasks - chatbots, virtual assistants, automatic customer support, text generation, etc. The model is quite versatile.

\. Ethical and security compliance through Constitutional AI reinforcement learning. This avoids generating malicious or offensive content.

\. The large size of the model ( billion parameters) ensures high quality text generation and the ability to reason about complex topics.

  

 Example of launching a node

Let's run the neural-chat-b-v--awq Prompt (preview) node to process the text and generate a response with parameters:

- User Prompt - _Give a definition of an exoermic reaction;_

- Max Tokens (Answer Size) \- .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcd-d--be-dfef%FUntitled.png?table=block&id=d-a--c-cdcebd&cache=v)

The output of the node execution is JSON:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbaed-aa-ccd-bee-fc%FUntitled.png?table=block&id=d-a--ac-caa&cache=v)

- with a response to the `"response"` request;

- with the status of the action `"success": true`.

JSON

```
{
  "result": {
    "errors": [],
    "messages": [],
    "result": {
      "response": "An exothermic reaction is a chemical process in which the total energy released during the reaction is greater than the energy required to initiate it. In simpler terms, it is a reaction that produces more energy than it consumes. This excess energy is often released as heat, light, or other forms of energy. Examples of exothermic reactions include burning fuels, such as combustion of wood or gasoline, and the decomposition of certain organic compounds. These reactions can be used for various purposes, such as generating electricity, cooking food, or producing heat for warmth."
    },
    "success": true
  }
}
```