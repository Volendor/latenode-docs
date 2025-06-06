---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/phi-/kEYxeVUqUGXQjXYZb"
title: "phi- – Latenode | Help Center"
---

 phi-

AI model for general-purpose automation.


 Model Description

К модели `@cf/microsoft/phi-` относится два узла:

- phi- Prompt (preview)

- phi- With History (preview)



Model ID: `@cf/microsoft/phi-`. Phi- is a transformer-based model for next-word prediction trained on . T tokens derived from multiple runs on a mixture of synthetic and web data for NLP and coding.

  

The model is one of the multi-purpose models for solving a wide range of natural language processing problems. The main areas of application of the model are:

\. Text generation - the model can be used for automatic generation of coherent text fragments based on input data.

\. Natural language understanding - the model is trained on a wide corpus of texts and can be used to understand the semantics and context of a text.

\. Text classification - the model can be used to classify text documents into different categories or properties.

\. Information Extraction - the model is capable of extracting structured information from unstructured text.

\. Question-answering systems - the model can be integrated into systems capable of answering questions using information from a knowledge base.

  

 Example of launching a node

Let's run the phi- Prompt (preview) node to process the text and generate a response with parameters:

- User Prompt - _Finish the sentence "The deserts of Australia are home to some amazing animals, but for example, ...”;_

- Max Tokens (Answer Size) \- .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faeaee-e-f-a-cacbc%FUntitled.png?table=block&id=d-a-fc--cbf&cache=v)

The output of the node execution is JSON:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%F-da-f-ef-dfa%FUntitled.png?table=block&id=d-a-f-ba-cdafda&cache=v)

- with a response to the `"response"` request;

- with the status of the action `"success": true`.

JSON

```
{
  "result": {
    "errors": [],
    "messages": [],
    "result": {
      "response": "\n- homo sabaeus, the world's only publicly known natural man-made diamond\n- African wild dogs\n- desert tortoises\n- kangaroos\n- wallabies\n- dunnarts\n- emus\n- pygmy possums\n- quokkas\n- cane toads\n- bald eagles\n- four-horned antelopes\n- swooping falcons\n- caimans\n- blue oilbirds\n- northern brown bandicoots\n- potoroos\n- boodie\n- galah birds\n- long-nosed potoroos\n- green tree frogs\n- crested welcome swallows\n- honeyeaters\n- feather Tail Wallabies\n- kookaburras\n- magpie goose\n- Indian mynah birds\n- flame robins\n- little owl\n- woylie marsupial\n- firetails birds\n- turquoise doves\n- sandstone bridge parrots\n- stone curlews\n- sand monitor lizards\n- tammar wallabies\n- frog-mouth snakes\n- yellow-footed antechinus\n- common brushtail possums\n- quokkas\n- dunnarts\n- honeyeat"
    },
    "success": true
  }
}
```