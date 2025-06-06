---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/distilbert-sst--int/kEYxeVUhKbWQSqwSp"
title: "distilbert-sst--int – Latenode | Help Center"
---

 distilbert-sst--int

AI model optimized for sentiment analysis.


 Node Description

distilbert-sst--int (preview) \- action type node needed to classify a given text and determine its positive or negative "mood".



Model ID: `@cf/huggingface/distilbert-sst--int`. Improved BERT model refined on SST- for sentiment classification (determining whether a statement/text is positive or negative)

  

Text classification using artificial intelligence has several important applications. Among them is sentiment analysis - determining whether the emotional tone or mood expressed in a text is positive or negative. This is useful in the following cases:

\. Improving customer experience: Analyzing feedback, reviews, and customer service interactions to identify pain points and improve products/services.

\. Brand/Reputation Monitoring: Tracking the public's emotional response to a company, product, or public figure on social media and news.

\. Market Research: Understanding how consumers feel about different topics, trends, or competitors in an industry.

  

 Node Configuration

The Text field is required to configure the distilbert-sst--int (preview) node.

 Text

Text field to be filled in. The text can be filled in manually or be the result of previous nodes.

 Example of launching a node

Let's start the distilbert-sst--int (preview) node to process the text and generate a response.

Example text: _Paul Atreides looked at his planet one last time._ _Here was the salty sea that had humbly sharpened the gray rocks year after year._ _Here is the green grass, still wet after the rain._ _All this he saw, maybe for the last time._ _Ahead of him lay an unfriendly planet._ _Where every drop of water was worth its weight in gold, and the natives trusted no one._

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdd-e-bf--fbaa%FUntitled.png?table=block&id=d-a-b-d-dbbfeb&cache=v)

The output of the node execution is JSON:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcaad--fe-ad-eb%FUntitled.png?table=block&id=d-a--d-dddbcb&cache=v)

- with labels, e.g., "NEGATIVE" a grade that reflects a negative mood;

- with scores, e.g., . the probability or confidence of the model that the given text is negatively colored. The higher the grade, the higher the model's confidence in the processing result.

- with the action execution status `"success": true`.

JSON

```
{
"result": {
"errors": [],
"messages": [],
"result": [\
{\
"label": "NEGATIVE",\
"score": .\
},\
{\
"label": "POSITIVE",\
"score": .\
}\
],
"success": true
}
}
```