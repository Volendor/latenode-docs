---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/mm-b/kEYxeVVuZAaypMg"
title: "mm-.b – Latenode | Help Center"
---

 mm-.b

Multilingual translation AI model.


 Node Description

mm-.b (preview) \- action type node needed to translate a given text into the required language.



Model ID: `@cf/meta/mm-.b`. Translation models convert a sequence of text from one language to another. Multilingual encoding-decoding (seq-to-seq) model trained for multilingual translation "Many to many”

  

AI model for text translation (e.g., AI Translation model) is used for automatic translation from one language to another. The main applications include:

\. Translation of documents, web pages, emails and other written content between languages.

\. Multilingual data processing where information from different sources and in different languages needs to be aggregated, analyzed and consolidated.

\. Localizing software, content, marketing materials and other content for international audiences.

\. Making information more accessible to people who speak different languages.

  

 Node Configuration

To configure the mm-.b (preview) node, required and optional fields are required. Required fields include field:

- Text.

 Text

Text field to be filled in. The text can be filled in manually or be the result of previous nodes.

 Source Language

Drop-down list for selecting the language in which the source text is written.

 Target Language

A drop-down list to select the language to which you want to translate.

 Example of launching a node

Let's start the mm-.b (preview) node to process the text and generate a response with parameters:

- Text - _Rose is a collective name for species and varieties of the genus Rosa, cultivated by humans and growing in the wild._ _Most rose varieties are the result of long-term breeding through repeated repeated crosses and selection._ _Some varieties are forms of wild species._

- Source Language \- English;

- Target Language - French.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdd-b-f-b-fca%FUntitled.png?table=block&id=d-a-e-e-eceeaebf&cache=v)

The output of the node execution is JSON:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fefffe-b-d-ba-bc%FUntitled.png?table=block&id=d-a--bb-daffd&cache=v)

- with ` translated` text `"translated_text";`

- with the action execution status `"success": true`.

JSON

```
{
  "result": {
    "errors": [],
    "messages": [],
    "result": {
      "translated_text": "Rose est un nom collectif pour les espèces et variétés du genre Rosa, cultivées par les humains et cultivées dans la nature. La plupart des variétés de roses sont le résultat d'une reproduction à long terme à travers des croisements répétés et de la sélection."
    },
    "success": true
  }
}
```