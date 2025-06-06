---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/llama--b-chat-awq/kEYxeVVTGPvJMndhLj"
title: "llama--b-chat-awq – Latenode | Help Center"
---

 llama--b-chat-awq

AI models for natural language understanding and chatbot applications.


 Model Description

The `@hf/thebloke/llama--b-chat-awq` model includes two nodes:

- llama--b-chat-awq Prompt (preview)

- llama--b-chat-awq With History (preview)



Model ID: `@hf/thebloke/llama--b-chat-awq`. Llama  B Chat AWQ is an efficient, accurate and lightning fast low bit weight and quantization variant of Llama .

  

The model is designed to perform various tasks related to natural language processing such as:

\. Text generation: The model can be used to generate coherent and context sensitive textual responses based on the provided input data.

\. Question-answering systems: The model can be used to realize chatbots and virtual assistants that answer users' questions.

\. Summarization and paraphrasing: The model can be used to compress long text documents or paraphrase text into a more concise form.

\. Text classification and analysis: The model can be used to classify text into different categories, detect tone, extract entities, etc.

  

 Example of launching a node

Let's run the falcon-b-instruct With History (preview) node to process the text and generate a response with parameters:

- Dialogue History\- `[{"role":"system","content":"Give a brief version of the text in a few sentences"}]`;

User Prompt

_The trip began with a long flight from the mainland. Despite the length of the journey, I was excited to finally arrive in Hawaii. As soon as I stepped off the plane, I was greeted with a warm and humid climate that was a welcome change from the cold winter weather back home._

_One of the first things we did upon arriving was visit the famous Waikiki Beach. The sand was soft and white, and the water was crystal clear. We spent hours swimming and soaking up the sun. We also tried our hand at surfing, which was a new and thrilling experience for me._

_In addition to beach activities, we also took the time to explore the island. We hiked through the lush forests, visited the stunning waterfalls, and even drove up to the top of the island to see the breathtaking views._

_One of my favorite parts of the trip was experiencing the local culture. We attended a traditional Hawaiian luau, which featured live music, dancing, and delicious food. We also visited the Polynesian Cultural Center, which was a fascinating place to learn about the history and traditions of the islands._

_Anyway, my vacation to Hawaii was an unforgettable experience. The beauty of the island and the warmth of the people made it a truly special trip. I can’t wait to go back and explore more of what Hawaii has to offer._

- Max Tokens (Answer Size) \- .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbbebad-f-ec-d-dfb%FUntitled.png?table=block&id=d-a-d-aa-deacfb&cache=v)

The output of the node execution is JSON:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffa--d--eaecd%FUntitled.png?table=block&id=d-a-dc-ad-fbcb&cache=v)

- with a response to the `"response"` request;

- with the status of the action `"success": true`.

JSON

```
{
  "result": {
    "errors": [],
    "messages": [],
    "result": {
      "response": "  Sure! Here's a brief version of the text in a few sentences:\n\nI took a trip to Hawaii and had an unforgettable experience. I visited famous Waikiki Beach, swam in the crystal-clear waters, and tried surfing. I also explored the island, hiked through lush forests, and visited stunning waterfalls. I attended a traditional Hawaiian luau and learned about the local culture at the Polynesian Cultural Center. Overall, the beauty of the island and the warmth of the people made it a truly special trip."
    },
    "success": true
  }
}
```