---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/batch-data-processing-in-google-sheets-%E%%-ai-processing-enrichment-and-more/tABeZyGDNsxiutp"
title: "Batch Data Processing in Google Sheets — AI Processing, Enrichment, and More – Latenode | Help Center"
---

 Batch Data Processing in Google Sheets — AI Processing, Enrichment, and More

A common question is how to process each row based on your specific logic (whether it's web scraping, enrichment, text generation, classification, or anything else). I've put together a brief guide for you.

  

 How to Do It

For a practical example, let’s take a list of  names in a Google Sheet and create personalized greeting emails using ChatGPT.

![Notion Image](https://www.notion.so/image/attachment%Acbbb-bd-e-b-cee%Acaccaaabccfecd.png?table=block&id=cd-a--b-ffbbf&cache=v)

 Step : Add a Status Column

First, we need to add a column to track whether each action has been completed. I’ve labeled this column as "not processed."

  

 Creating the Scenario

Next, we move on to setting up our scenario in Latenode.

![Notion Image](https://www.notion.so/image/attachment%Adff-f-e-de-ceeffa%Aabaafbeccbbeac.png?table=block&id=cd-a--bd-defff&cache=v)

Let’s break down how it works:

Trigger on Run Once: This node triggers the scenario when you click the "Run Once" button.

Find Row: This node is configured to fetch all row numbers where the status is "not processed." In our example, this status is located in column C, which we specify beforehand.

![Notion Image](https://www.notion.so/image/attachment%Ab-d-e-ba-ccb%Accdccaeeaefbbedf.png?table=block&id=cd-a-c-ae-cabdc&cache=v)

Iterator: The iterator processes each row individually — exactly what we need. We pass the array of row numbers to it.

![Notion Image](https://www.notion.so/image/attachment%A-ec-f-a-feffdf%Adfaaefaecdfacd.png?table=block&id=cd-a-a--eceb&cache=v)

Get Cell: The iterator sends each row number to the Get Cell node, allowing us to retrieve the row's contents.

As you can see, we've successfully retrieved the first row.

ChatGPT Node: Open the ChatGPT node and enter your prompt. In our example, we are generating personalized emails that include the user's name.

![Notion Image](https://www.notion.so/image/attachment%Adcd-eaa---aac%Adbccabbabbfbdbafeb.png?table=block&id=cd-a-fb-c-cfdefe&cache=v)

At this step, we generate the email text.

Update Cells: Next, we use two nodes to update the cells:

The first node writes the email text to the appropriate cell in column B of the corresponding row.

![Notion Image](https://www.notion.so/image/attachment%Aaaa-bd--e-bfbbe%Abfeadbecabdebbb.png?table=block&id=cd-a-c-aa-cfefaa&cache=v)

The second node updates the status to "processed" in the adjacent column.

  

‌

 Notion Video Block Error:



This file might be too large or unavailable. Please try to delete
the video block and reupload. The current file size maximum is 
MB.


  

 Conclusion

And that’s it! This method allows you to process any list efficiently without any hassle.

Start your automation journey at [Latenode.com](https://latenode.com/).