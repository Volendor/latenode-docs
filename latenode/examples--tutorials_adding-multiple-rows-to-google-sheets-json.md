---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/adding-multiple-rows-to-google-sheets-json/vnUVwGPdqCzqfxYuRS"
title: "Adding Multiple Rows to Google Sheets (json) – Latenode | Help Center"
---

 Adding Multiple Rows to Google Sheets (json)

To add multiple records to your Google Sheet via Latenode, use the Add Multiple Rows node from the Google Sheets folder. This node allows you to insert multiple rows at once by passing a JSON array of arrays — each nested array represents one row.

![Notion Image](https://www.notion.so/image/attachment%A--d--feaaca%Abrave_HNKwEGQufl.png?table=block&id=cd-a-a-bbf-ebaacf&cache=v)

  

 Using the Google Sheets Node in Latenode

This node expects data in the form of a JSON array of arrays, where:

- Each nested array represents a single row.

- Each element inside a nested array represents a cell (i.e., a column value).

- The order of values in each array must match the order of the columns in your sheet.

  Correct Format

```
[\
  ["Alice", "alice@example.com", ""],\
  ["Bob", "bob@example.com", ""],\
  ["Charlie", "charlie@example.com", ""]\
]

```

If your sheet has columns in this order: `Name | Email | Age`, the arrays must follow the same structure.

>  Double-check that column order in your data exactly matches the sheet layout.

  

 What If Your Data Is in Object Format?

If you're starting with a JSON array of objects, you need to transform it before passing it to the node. Otherwise, you’ll get an error like:

```
Invalid values[X][Y]: struct_value { ... }

```

You can use the AI Assistant inside a JavaScript node, or click the AI Node button to generate a JS block that reformats your data automatically.

 Example Request to the Assistant

> Convert the input array of objects into an array of arrays based on the following column order: Name, Email, Age.

![Notion Image](https://www.notion.so/image/attachment%Acf-b-b-b-efec%Abrave_LiYMi.png?table=block&id=cd-a-eb-cd-fbbcee&cache=v)

Press “ Generate” to get a ready-to-use tool for converting your data.

![Notion Image](https://www.notion.so/image/attachment%Aeeddcaa-c---d%Abrave_QnmieaIyP.png?table=block&id=cd-a-d-fa-ceac&cache=v)

 Input (incorrect format):

```
[\
  { "Name": "Alice", "Email": "alice@example.com", "Age":  },\
  { "Name": "Bob", "Email": "bob@example.com", "Age":  }\
]

```

 Output (correct format):

```
[\
  ["Alice", "alice@example.com", ""],\
  ["Bob", "bob@example.com", ""]\
]

```

Once the object format is converted using JavaScript, you can reference the result in your node and it will work correctly:

![Notion Image](https://www.notion.so/image/attachment%Acdf-aab--fb-babb%Abrave_CohODhN.png?table=block&id=cd-a--ab-dedbd&cache=v)

As you can see, the fields were successfully formatted and added to the sheet:

![Notion Image](https://www.notion.so/image/attachment%Acdd-c-b-abb-cdbc%Abrave_kQlvLeXozV.png?table=block&id=cd-a--ca-cbbc&cache=v)

  

 Tips

- Avoid including `null`, `undefined`, or extra nested objects.

- You can dynamically build arrays from API responses or other nodes.

- Make sure the number and order of values in each row match the target columns in your sheet.

  