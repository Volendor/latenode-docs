---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/downloading-files-via-webhook-response/tABeZftxgEZoQEL"
title: "Downloading Files via Webhook Response – Latenode | Help Center"
---

 Downloading Files via Webhook Response

Sometimes, you may need the ability to download files directly through a webhook response — whether it's for generating reports, exporting data, or automating file delivery.

This guide explains how to configure a webhook response to facilitate file downloads with the correct filename and format.

. Get the Binary File

You can use any node that provides file output, such as cloud storage nodes, JavaScript nodes, etc.

![Notion Image](https://www.notion.so/image/attachment%Afabc-b--f-daaeaf%Acddaefdbfecbcdeaeef.png?table=block&id=cd-a--aa-eefeddbc&cache=v)

. Set Up the Webhook Response Headers:

   - `content-type`: Specify the file type, e.g., `application/csv` for CSV files.

   - `content-disposition`: Use `attachment; filename="yourfilename.csv"` to prompt download with the specified filename.

![Notion Image](https://www.notion.so/image/attachment%Aefaf-d-b-bd-dcfbfc%Aafaccacddbcf.png?table=block&id=cd-a--b-fdccff&cache=v)

. Pass the File Content in the Body of the Webhook:

```
{{$.result.file.content}}

```

 Example Headers:

- Key: `content-type`

Value: `application/csv`

- Key: `content-disposition` Value: `attachment; filename="yourfilename.csv"`

![Notion Image](https://www.notion.so/image/attachment%Afab-bca-fd-aaa-ecd%Aefdcdcbadaeba.jpeg?table=block&id=cd-a--af-efadb&cache=v)

Now, when the webhook is triggered, the file will download automatically with the correct name and extension.