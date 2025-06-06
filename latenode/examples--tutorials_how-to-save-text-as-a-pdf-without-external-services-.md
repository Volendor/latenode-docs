---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/how-to-save-text-as-a-pdf-without-external-services-/wHNpJLfxCfpeFgHsCPR"
title: "How to Save Text as a PDF Without External Services  – Latenode | Help Center"
---

 How to Save Text as a PDF Without External Services

If you want to convert plain text into a PDF file without relying on third-party APIs or external services, here’s a simple two-step solution using JavaScript nodes and the `pdfkit` library.

  

  Step : Generate Base-Encoded PDF from Text

First, create a JavaScript node and paste the following code.

```
/ @CustomParams
{
    "text_content": {
        "type": "string",
        "title": "Text Content",
        "description": "The text content to be included in the PDF file"
    }
}
/

import PDFDocument from 'pdfkit';

export default async function run({ execution_id, input, data, store, db }) {
    const textContent = data.text_content;
    if (!textContent) {
        throw new Error('Text content is required.');
    }

    const doc = new PDFDocument();
    const chunks = [];

    doc.on('data', chunk => chunks.push(chunk));
    const endPromise = new Promise(resolve => {
        doc.on('end', () => {
            const pdfBuffer = Buffer.concat(chunks);
            const base = pdfBuffer.toString('base');
            resolve({ base });
        });
    });

    doc.text(textContent);
    doc.end();

    return await endPromise;
}

```

Then click `Generate params` to create an input field for your text:

![Notion Image](https://www.notion.so/image/attachment%Aac-c-eb-bd-b%Abrave_RlrAqnUxSz.png?table=block&id=cd-a-b-b-fffc&cache=v)

This node will generate a base string that represents your text as a PDF document.

![Notion Image](https://www.notion.so/image/attachment%Aadb-ab--d-bfeeb%Abrave_KvFhP.png?table=block&id=cd-a-c-bc-eadec&cache=v)

  

  Step : Convert Base into a BinaryPDF File

Create a second JavaScript node, paste the code below:

```
/ @CustomParams
{
    "base_string": {
        "type": "string",
        "title": "Base String",
        "description": "Base encoded data to be written into a PDF file"
    }
}
/

import fs from 'fs';
import { v as uuidv } from 'uuid';

export default async function run({ execution_id, input, data, store, db }) {
    try {
        // Generate a random file name with .pdf extension
        const fileName = `${uuidv()}.pdf`;

        // Ensure base data is provided
        const baseData = data.base_string;
        if (!baseData) {
            throw new Error('Base data is required.');
        }

        // Decode base data
        const binaryData = Buffer.from(baseData, 'base');

        // Write binary data to a PDF file
        fs.writeFileSync(fileName, binaryData);

        return {
            file: file(fileName)
        };
    } catch (error) {
        console.error(error.message);
        return {
            error: error.message
        };
    }
}
```

and also click `Generate params` to create a field for the base string

Then, insert the variable from the previous node (the base string) into the `base_string` field.

![Notion Image](https://www.notion.so/image/attachment%Aac-ce-f--c%Abrave_QuaSAXhet.png?table=block&id=cd-a--a-cecdecb&cache=v)

Run the node, and as a result you’ll get a ready-to-use PDF file, which you can download or pass further into your automation flow.

![Notion Image](https://www.notion.so/image/attachment%Aceafc-c-cd-bc-ffbaf%Abrave_DqfxQF.png?table=block&id=cd-a--b-feecbda&cache=v)

![Notion Image](https://www.notion.so/image/attachment%Acbb-ccf--af-ef%AQuickLook_IDaTpGPdp.png?table=block&id=cd-a--be-fadff&cache=v)

  

  Example Workflow

. Enter your desired text in the `Text Content` field (e.g., `Hello, world!`).

. Run the first node to get a base string.

. Paste that base string into the second node's `Base String` field.

. Run the second node and download the resulting `.pdf` file.

  

 That’s it! A simple, local solution with no external dependencies, no fees, and total control.