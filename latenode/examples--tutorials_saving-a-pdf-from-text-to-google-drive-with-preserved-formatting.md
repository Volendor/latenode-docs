---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/saving-a-pdf-from-text-to-google-drive-with-preserved-formatting/zpzobejPaoaRpSZVKjU"
title: "Saving a PDF from Text to Google Drive with Preserved Formatting – Latenode | Help Center"
---

 Saving a PDF from Text to Google Drive with Preserved Formatting

Google Drive API does not support direct creation of a formatted PDF file from plain text.

However, you can achieve the desired result through a simple workaround: first create a Google Docs file from the text, then export it as a PDF, preserving formatting such as line breaks, lists, and headings.

  

  Step-by-step guide

 Step  — Create a Google Docs file from text

To begin, use one of the following nodes to create a document in Google Docs format

- Google Drive → Create new file from text

- Google Docs → Create new document from text

![Notion Image](https://www.notion.so/image/attachment%Accb-d---eefacbad%Abrave_YDnVOmG.png?table=block&id=cfd-a--bb-dbecca&cache=v)

>  On successful creation, these nodes will return the fileId of the new document — this is what you’ll use in the next step to export it as a PDF.

  

 Step  — Export the document as PDF and save it to Drive

Paste the code below into a JavaScript node to export the document and save it as a PDF. This step also deletes the original `.gdoc` file after export.

```
/ @CustomParams
{
  "accessToken": {
    "title": "Google Drive Access Token",
    "key": "accessToken",
    "type": "string"
  },
  "fileId": {
    "title": "Google Docs File ID",
    "key": "fileId",
    "type": "string"
  },
  "pdfFileName": {
    "title": "PDF File Name",
    "key": "pdfFileName",
    "type": "string"
  }
}
/
import { google } from 'googleapis';
import stream from 'stream';

export default async function run({ data }) {
  const auth = new google.auth.OAuth();
  auth.setCredentials({ access_token: data.accessToken });

  const drive = google.drive({ version: 'v', auth });

  try {
    const exportResponse = await drive.files.export(
      {
        fileId: data.fileId,
        mimeType: 'application/pdf'
      },
      {
        responseType: 'stream'
      }
    );

    const bufferStream = new stream.PassThrough();
    exportResponse.data.pipe(bufferStream);

    const uploadResponse = await drive.files.create({
      resource: {
        name: data.pdfFileName || 'exported.pdf',
        mimeType: 'application/pdf'
      },
      media: {
        mimeType: 'application/pdf',
        body: bufferStream
      },
      fields: 'id, name, webViewLink'
    });

    const pdfFile = uploadResponse.data;

    //  Optional: Delete the original Google Docs file
    await drive.files.delete({ fileId: data.fileId });

    return {
      message: ' PDF saved to Google Drive and source document deleted',
      pdfFileId: pdfFile.id,
      fileName: pdfFile.name,
      viewLink: pdfFile.webViewLink
    };

  } catch (err) {
    return {
      error: ' Failed during export/upload/delete',
      details: err.message
    };
  }
}

```

>  Paste this into a JavaScript node, click “Generate Params”, and fill in:

  

  Workflow summary

. Create a Google Docs file using a built-in Drive/Docs node

. Export it as PDF using a JavaScript node

. Upload the PDF to Drive

. Delete the temporary `.gdoc` file after export

  

![Notion Image](https://www.notion.so/image/attachment%Aced-fc--ac-aebeadaa%Abrave_MNzIxOCWM.png?table=block&id=cfd-a--ace-fadcfea&cache=v)