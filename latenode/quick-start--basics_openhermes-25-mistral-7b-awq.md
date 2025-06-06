---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/openhermes--mistral-b-awq/kEYxeVTkpLfCtiUGCy"
title: "openhermes-.-mistral-b-awq – Latenode | Help Center"
---

 openhermes-.-mistral-b-awq

AI model optimized for open-domain question answering.


 Model Description

The `@hf/thebloke/openhermes-.-mistral-b-awq` model includes two nodes:

- openhermes-.-mistral-b-awq Prompt (preview)

- openhermes-.-mistral-b-awq With History (preview)



Model ID: `@hf/thebloke/openhermes-.-mistral-b-awq`. OpenHermes . Mistral B is a modern Mistral Fine-tune, a continuation of the OpenHermes  model that was trained on additional code datasets.

  

The OpenHermes-.-Mistral-B-AWQ model is used for a variety of natural language processing tasks. Some of the main characteristics and uses of this model are:

\. Scale: The model contains about  billion parameters, which makes it large and powerful enough for natural language tasks.

\. Pre-training: The model has been pre-trained on an extensive text dataset, which enables it to understand and generate natural language text efficiently.

\. Application: The model can be used for a wide range of natural language processing tasks such as text generation, question answering, paraphrasing, topic modeling, etc.

\. Adaptation: The model can be customized (fine-tuned) to specific tasks or subject areas to achieve better performance.

\. Openness: As the name implies, the OpenHermes-.-Mistral-B-AWQ model is part of an open platform, which allows researchers and developers to explore it and use it in their projects.

Thus, this model is a powerful tool for a wide range of tasks related to natural language processing and can be customized for the specific needs of different applications and research.

  

 Example of launching a node

Let's run the openhermes-.-mistral-b-awq Prompt (preview) node to process the text and generate a response with parameters:

- User Prompt - _Generate code to determine the number of days until the new year;_

- Max Tokens (Answer Size) \- .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feff-d-bf-abc-cbfbc%FUntitled.png?table=block&id=d-a-d-bad-eebacbd&cache=v)

The output of the node execution is JSON:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffe-b-f-bfb-babdbf%FUntitled.png?table=block&id=d-a-e-a-cfde&cache=v)

- with a response to the `"response"` request;

- with the status of the action `"success": true`.

JSON

````
{
  "errors": [],
  "messages": [],
  "result": {
    "response": "To determine the number of days until the new year, you can use the following Python code:\n\n```python\nimport datetime\n\ndef days_until_new_year():\n    today = datetime.datetime.now()\n    new_year = datetime.datetime(today.year + , , )\n    return (new_year - today).days\n\nprint(days_until_new_year())\n```\n\nThis code first imports the `datetime` module, which provides classes for manipulating dates and times. The `days_until_new_year()` function then gets the current date and time using `datetime.datetime.now()`. It creates a `datetime` object for the first day of the next year using `datetime.datetime(today.year + , , )`. Finally, it calculates the difference between the two dates and returns the number of days. The `print()` statement calls the function and displays the result."
  },
  "success": true
}
````