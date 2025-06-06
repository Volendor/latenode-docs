---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/qwen-b-b-b-chat-awq/kEYxeVVQQFfhoXjZ"
title: "qwen.-b (.b, b)-chat-awq – Latenode | Help Center"
---

 qwen.-b (.b, b)-chat-awq

Large-scale AI models for natural conversation.


 Models description

The `@cf/qwen/qwen.-.b-chat` model includes nodes:

- qwen.-.b-chat Prompt (preview)

- qwen.-.b-chat With History (preview)

The `@cf/qwen/qwen.-b-chat-awq` model includes nodes:

- qwen.-b-chat-awq Prompt (preview)

- qwen.-b-chat-awq With History (preview)

The `@cf/qwen/qwen.-b-chat-awq` model includes nodes:

- qwen.-b-chat-awq Prompt (preview)

- qwen.-b-chat-awq With History (preview)

  

These models differ in the size and complexity of the neural network that underlies them. The larger the size of the model, the more parameters (weights) it contains and, consequently, the more complex it is and can solve more complex problems.

More details about each model:

\. qwen.-.b-chat is a model with a size of . billion parameters. It is relatively small and thus less complex. Such models are usually used for simpler tasks, such as basic dialogs, answering simple questions, and the like.

\. qwen.-b-chat \- this model has  billion parameters, i.e. it is larger and more complex than the previous one. Such models can already solve more complex tasks, for example, conduct more detailed, meaningful dialogs, answer more complex questions, generate better texts, etc.

\. qwen.-b-chat \- this model is the largest one presented, with  billion parameters. It is even more sophisticated and can solve even more complex tasks, such as writing extended texts on different topics, analyzing and processing a large amount of information, performing more creative and intellectual tasks.

In general, the larger the size of the model, the more capable it is of solving complex, diverse and intelligent tasks. But at the same time, training and using larger models requires more computational resources and time.

  

 Example of launching a node

Let's run the qwen.-b-chat-awq Prompt (preview) node to process the text and generate a response with parameters:

- User Prompt - _Generate text about the beauty of the ocean;_

- Max Tokens (Answer Size) \- .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffad-b-f-fd-dcfcde%FUntitled.png?table=block&id=d-a--fc-cdeefa&cache=v)

The output of the node execution is JSON:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fedd-bc-c-bef-fcbb%FUntitled.png?table=block&id=d-a-a-bab-ceabce&cache=v)

- with a response to the `"response"` request;

- with the status of the action `"success": true`.

JSON

```
{
"result": {
"errors": [],
"messages": [],
"result": {
"response": "The ocean, a vast and mesmerizing canvas, is a treasure trove of natural beauty that transcends human comprehension. Its cerulean depths conceal an underwater world, a kaleidoscope of colors and hues that dance with the mesmerizing rhythms of life. The azure waters stretch as far as the eye can see, meeting the azure sky in a seamless harmony that evokes a sense of tranquility and wonder.\n\nThe sunbathed coastline is a symphony of soft sandy shores, fringed by tall, swaying palm trees, their shadows painting a golden pattern on the shimmering sands. Gentle waves caress the shore in a lullaby, their rhythmic applause woven into the very fabric of time. As the tide ebbs and flows, it leaves behind intricate seashells and mother-of-pearl treasures, whispers of the ocean's whispered secrets.\n\nThe spectacle of the ocean's power and majesty is best witnessed during a storm. Dark clouds gather, painting the sky with ominous hues, as the waves grow taller than mountains, their thunderous roar echoing across the horizon. Yet, in this display of resilience, there is an irresistible beauty that stirs our souls and reminds us of nature's raw energy.\n\nThe deep sea is a打交道 realm, home to"
},
"success": true
}
}
```