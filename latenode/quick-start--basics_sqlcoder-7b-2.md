---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/sqlcoder-b-/kEYxeVVVeQhsRVsfe"
title: "sqlcoder-b- – Latenode | Help Center"
---

 sqlcoder-b-

AI model focused on SQL query generation and optimization.


 Model description

The `@cf/defog/sqlcoder-b-` model includes two nodes:

- sqlcoder-b- Prompt (preview)

- sqlcoder-b- With History (preview)



Model ID: `@cf/defog/sqlcoder-b-`. This model is intended to be used by non-technical users to understand data in SQL databases.

  

The model is designed to help non-technical users better understand the data in their SQL databases. It works as follows:

\. Understanding the database structure: The model is able to analyze the database schema and explain how the database is organized - what tables it has, the relationships between them, the columns contained in each table.

\. Data Interpretation: The model can take a sample of data from the database and explain what the data represents in simple language. It will help in understanding what information each column contains, what patterns and trends can be noticed in them.

\. Answering questions: Users can ask the model questions about the data in the database and it will try to provide clear explanations using simple language and examples.

  

 Example of launching a node

Let's run the sqlcoder-b- Prompt (preview) node to process the text and generate a response with parameters:

- User Prompt - _Write a query to retrieve all rows of table "X”;_

- Max Tokens (Answer Size) \- .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feafd-a-ed-bfe-dcac%FUntitled.png?table=block&id=d-a-a-e-daeedc&cache=v)

The output of the node execution is JSON:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fabfaa-bff--bfc-bedea%FUntitled.png?table=block&id=d-a-e-bba-dfcdea&cache=v)

- with a response to the `"response"` request;

- with the status of the action `"success": true`.

JSON

```
{
  "result": {
    "errors": [],
    "messages": [],
    "result": {
      "response": " SELECT  FROM X;"
    },
    "success": true
  }
}
```