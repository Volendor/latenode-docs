---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/bge-base-en-v/eHdUXtpgSkCiURYADko"
title: "bge-base-en-v. – Latenode | Help Center"
---

 bge-base-en-v.

AI models designed for embedding generation and search ranking.


 Node Description

bge-base-en-v. (preview) \- action type node needed to generate numeric vectors based on the given text.

️

Maximum number of input tokens: \. Output sizes: 



Model ID: `@cf/baai/bge-base-en-v.`. BAAI general embedding (bge) models, i.e., object extraction models convert any text into a compact vector. These numerical representations or numerical vectors retain the basic information from the raw data (text) and can be further utilized in applications.

  

Embeddings are widely used in modern language models and natural language processing systems. Here are some of the main applications of text embeddings:

\. Text analysis and classification: representing words and text as vectors allows efficient application of machine learning algorithms for text classification tasks, topic modeling, tone detection, etc.

\. Information retrieval and recommendation: text embeddings are used to compute semantic proximity between documents, queries and content, which is important for search engines, recommendation services and other applications.

\. Improving deep learning models: using textual embeddings as inputs to deep learning models can often improve their performance, especially in the presence of limited labeled data.

  

 Node Configuration

To configure the bge-base-en-v. (preview) node, the required Text field is required.

 Text

Text field to be filled in. The text can be filled in manually or be the result of previous nodes.

If necessary, you can process several text fragments at once. To do this, add additional fields by clicking the "plus" icon (  ). Deleting added fields is also available (  ).

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdd-ea-eb--efbb%FUntitled.png?table=block&id=ad-a-cc-ad-febb&cache=v)

 Example of launching a node

Let's run the bge-base-en-v. (preview) node to process text and generate numeric vectors.

Example text

_Cornish Rex are muscular, slender and lean cats. They are heavier than their appearance suggests. These cats have an elongated wedge-shaped head, a flat skull and large, high-set ears._

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fffcbc-cd--acdd-cfc%FUntitled.png?table=block&id=ad-a-ac-a-dbcdff&cache=v)

The output of the node execution is JSON:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Facfe-da--bc-%FUntitled.png?table=block&id=ad-a--c-dabc&cache=v)

- with an array of  numeric vectors `"data";`

- with the action execution status `"success": true`.

JSON (abridged version)

```
{
  "result": {
    "errors": [],
    "messages": [],
    "result": {
      "data": [\
        [\
          -.,\
          -.,\
          -.,\
          -.,\
          .,\
          .,\
          .,\
						...\
          .,\
          .\
        ]\
      ],
      "shape": [\
        ,\
        \
      ]
    },
    "success": true
  }
}
```