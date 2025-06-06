---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/how-to-create-an-ai-assistant-with-a-knowledge-base-openai-assistant/tABeZcGobgERPFhwp"
title: "How to Create an AI Assistant with a Knowledge Base (OpenAI Assistant) – Latenode | Help Center"
---

 How to Create an AI Assistant with a Knowledge Base (OpenAI Assistant)

OpenAI assistants on Latenode are primarily designed for building chatbots and advanced text-generation assistants that require specific behavior settings and the ability to maintain large information context (such as your internal documentation). They allow you to create intelligent assistants that can answer questions, perform tasks, and use external tools. With a built-in knowledge base (RAG), the assistant gains access to up-to-date information and context, making it much more useful.

  

 Step : Create an Assistant in OpenAI

. Go to the [OpenAI Playground](https://platform.openai.com/assistants). Here you'll see a list of your assistants (as you can see, I already have one)

. Click "Create Assistant".

![Notion Image](https://www.notion.so/image/attachment%Aefade-b-d-fd-feef%Aeafcdbfbddffdbad.png?table=block&id=cd-a--b-fdecabd&cache=v)

. Give your assistant a name.

![Notion Image](https://www.notion.so/image/attachment%Abf-b--b-bcdaff%Afddbbefcfd.png?table=block&id=cd-a-a-f-ddc&cache=v)

. Choose a model (I usually prefer `gpt-o-mini` because it offers a good balance between cost and performance).

![Notion Image](https://www.notion.so/image/attachment%Abe----ddaebed%Afefeedfeadcbe.png?table=block&id=cd-a-f-ab-ffdd&cache=v)

. Configure the system instructions — briefly explain how the assistant should act.

![Notion Image](https://www.notion.so/image/attachment%Afb-cfb-d-bce-bfeca%Abffbbfbaaedec.png?table=block&id=cd-a-f-ed-cea&cache=v)

Let’s say we want to create a sales representative assistant.

Here’s a simple instruction example:

> You are a helpful assistant for a sales representative.

  

 Step : Add a Knowledge Base (RAG)

. In the "Files" section, enable the file search toggle to activate the storage functionality.

![Notion Image](https://www.notion.so/image/attachment%Aedf-c-e-ee-ecdebe%Abeeadcbfcfcffdfafc.png?table=block&id=cd-a--bdf-eadf&cache=v)

. Then click \+ Files

![Notion Image](https://www.notion.so/image/attachment%Affd-dd-ad--deefe%Aeccdbdbacdef.png?table=block&id=cd-a-e-e-eea&cache=v)

. Upload PDF, TXT, or other documents that contain important information (e.g., your documentation). For example, I’ll upload a file called `sales_assistant_instructions.txt`

![Notion Image](https://www.notion.so/image/attachment%Acd-ffb-fa-bf-bbfee%Addcedebbbbbceee.png?table=block&id=cd-a-d-baf-de&cache=v)

These files will be used via Retrieval-Augmented Generation (RAG) — the assistant will treat them as its memory.

> Make sure your files are well-structured: use headings, bullet points, and logical sections.

  

 Step : Test the Assistant

On the right side of the screen, you can test your assistant.

![Notion Image](https://www.notion.so/image/attachment%Afb-c-bd-a-eeaf%Acedfffaceddaa.png?table=block&id=cd-a--bb-dbabdc&cache=v)

Let’s ask a question that pulls from the uploaded knowledge base.

Example:

Question: _"Do we have any secret promo codes for important clients?"_

![Notion Image](https://www.notion.so/image/attachment%Aeaca---c-cacab%Aeedabffdaace.png?table=block&id=cd-a--de-fdfbf&cache=v)

As you can see, the assistant accessed the knowledge base and provided a correct answer.

And that’s it — you’ve created your first assistant with a knowledge base!

  

 Getting the API Key

To get your assistant’s API key, go to the dashboard section where you'll find the API Keys tab.

![Notion Image](https://www.notion.so/image/attachment%Adbba-e-a-d-c%Acfbeeefbeccfafbfdb.png?table=block&id=cd-a-d-ad-deecc&cache=v)

Here, you can see all your keys and create a new one.

![Notion Image](https://www.notion.so/image/attachment%Aaceb-dda-ec-a-efe%Aaebbfeebddccccacc.png?table=block&id=cd-a-bf-a-dbebdea&cache=v)

Select a project, name the key, and set the permissions.

![Notion Image](https://www.notion.so/image/attachment%Aeb-d-ca-b-ffbb%Afbeeeaeedede.png?table=block&id=cd-a-da-ae-deed&cache=v)

Then copy your key and save it somewhere safe.

![Notion Image](https://www.notion.so/image/attachment%Abac-b--aa-aabea%Aeaabceaecfefa.png?table=block&id=cd-a--fa-cdbbac&cache=v)

  

 Connecting the Assistant on Latenode

Latenode offers many tools for fully remote management of your assistants, including creation, configuration, file updates, and more.

![Notion Image](https://www.notion.so/image/attachment%Abbdf-a-a-abc-eaaf%Adbbdfddbbcbcedacffa.png?table=block&id=cd-a--bd-dfdaafdc&cache=v)

But to get started, the most basic and universal tool is Send Message to Assistant (Complete Flow).

![Notion Image](https://www.notion.so/image/attachment%Adbd-aa--ba-cdeba%Aaefcefddff.png?table=block&id=cd-a--aeb-cebf&cache=v)

Add it and authorize using your API key.

![Notion Image](https://www.notion.so/image/attachment%Abdf-bc-ba-be-ba%Aebfeabaabaeefeddf.png?table=block&id=cd-a--b-dfcacb&cache=v)

Then select the assistant you created, define the role (who the message is from), and enter your message (again, you can use the same test question).

![Notion Image](https://www.notion.so/image/attachment%Ac-db-eb-ad-bafd%Aacdecabed.png?table=block&id=cd-a--d-dfdfe&cache=v)

Run the scenario and get the response.

![Notion Image](https://www.notion.so/image/attachment%Abe-bc-db-c-edfae%Aecfdfdbbcee.png?table=block&id=cd-a-f-b-faccd&cache=v)

Your assistant is working!

> Each conversation with the assistant creates a "thread". If you specify an existing thread ID, the assistant will maintain the context of previous messages — which is essential for chatbot functionality.

  

  Useful Tips

- Regularly update your knowledge files when your product changes.

- Use FAQs or real user questions as the foundation of your knowledge base.

- Don’t overload the assistant with huge files — break them into topics.

  

 Free Template

To learn how to create a simple chatbot with context support,

[you can copy this template via the link](https://app.latenode.com/run-action?action=clone-template&template-id=eabbd)

![Notion Image](https://www.notion.so/image/attachment%Ada-c-bf-de-ceacfecff%Aeccbeadffdebebbbed.jpeg?table=block&id=cd-a--e-ccdefaa&cache=v)

Thanks for reading!