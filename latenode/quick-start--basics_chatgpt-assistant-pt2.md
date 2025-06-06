---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/chatgpt-assistant-pt/eHdUXtpgbudEbGxxUMPR"
title: "ChatGPT Assistant pt – Latenode | Help Center"
---

 ChatGPT Assistant pt

Additional configurations and functionalities for ChatGPT automation.


![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffc-dfe--d-bcbac%FUntitled.png?table=block&id=ad-a-b-bba-ecd&cache=v)

 Upload File

Upload File is an action type node required to upload a file to GPT chatbot.



See How to send Data into a Scenario

 Node Configuration

To set up the Upload File node, you must fill in the required fields.

The required \\ fields include:

- API Key;

- File;

- Purpose.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fd-ff-ca-f-cab%FUntitled.png?table=block&id=ad-a---daef&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 File

The File object (not file name) to be uploaded. The file can be transferred to the node using a Trigger on Webhook node or a file download node, for example from Google Drive.

 Purpose

The intended purpose of the uploaded file. Use "fine-tune" for Fine-tuning and "assistants" for Assistants and Messages. This allows us to validate the format of the uploaded file is correct for fine-tuning.

 Example of Node Usage

To upload a file to GPT chatbot, you need to add three nodes to the scenario:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcc--b-ef-fefd%FUntitled.png?table=block&id=ad-a---dfa&cache=v)

- (  ) A Trigger on Webhook node with a URL to which a POST request is sent with a Form-data body containing the file _Adding a Node_;

- (  ) A Upload File node to upload a file to GPT chatbot;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feb-ffc-e-ba-fabcf%FUntitled.png?table=block&id=ad-a-e-f-ccbaba&cache=v)

- (  ) A Webhook Response node to get the ID of the downloaded file.

The result of executing the scenario will be uploading the file to GPT chatbot and receiving the file ID as a response to scenario execution.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbccc-d-a--ee%FUntitled.png?table=block&id=ad-a-c-be-deeadeec&cache=v)

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fefd-ab-fe-b-decda%FUntitled.png?table=block&id=ad-a-e-ac-cfcf&cache=v)

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fc-c-dd-aa-bcaabf%FUntitled.png?table=block&id=ad-a-e-de-dddf&cache=v)

 Modify Message

Modify Message is an action type node required to change the metadata of a GPT chatbot message sent in the selected thread.

 Node Configuration

To configure the Modify Message node, you must fill in the required and optional fields.

The required \\ fields include:

- Message ID;

- API Key;

- Thread ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Facfe-fec-f-cf-bda%FUntitled.png?table=block&id=ad-a-f-db-efafab&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Thread ID

The field required to specify the ID of the thread that contains the message.

 Message ID

ID of the message that needs to be changed.

 Metadata

The field required to enter additional information about the assistant in the key-value format. The key can contain  characters, and the value can contain  characters.

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faba-afb-a--d%FUntitled.png?table=block&id=ad-a-e-f-cfcb&cache=v)

 Delete File

Delete File an action type node required to delete a previously uploaded file.

 Node Configuration

To configure the Delete File node, you must fill in the required fields.

The required \ fields include:

- API Key;

- File ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcbf-bbef-a-acd-dcbef%FUntitled.png?table=block&id=ad-a--c-cdacf&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 File ID

ID of the previously uploaded file to delete.

 Example of launching a node

It is necessary to launch the Delete File node once with the parameters:

- API Key \- Your API key ;

- File ID \- ID of the previously uploaded file.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbf-c-af-ad-bef%FUntitled.png?table=block&id=ad-a-f-bd-facedd&cache=v)

The result of node execution is the deletion of the specified file. The output data of the node is the deletion status and the file ID:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ff-db-b-bb-faefdcdb%FUntitled.png?table=block&id=ad-a-ad-abf-fcf&cache=v)

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fba-ef-bae-cbd-fd%FUntitled.png?table=block&id=ad-a-dc--ddffccf&cache=v)

 Vision

Vision is an action type node is required to send an image and accompanying text to ChatGPT to generate a response regardless of assistants, threads and runs.

 Node Configuration

To configure the Vision node, you must fill in the required and optional fields.

The required \\ fields include:

- API Key.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbfb--ee-a-bcffb%FUntitled.png?table=block&id=ad-a--b-eebb&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Text

The text of the question on the image or images.

 Images

The image is in URLs or base encoded string format. See more [here](https://platform.openai.com/docs/guides/vision).

 Detail

By controlling the detail parameter, which has three options, low, high, or auto, you have control over how the model processes the image and generates its textual understanding. By default, the model will use the auto setting which will look at the image input size and decide if it should use the low or high setting.

- low will disable the “high res” model. The model will receive a low-res px x px version of the image. This allows the to return faster responses and consume fewer input tokens for use cases that do not require high detail.

- high will enable “high res” mode, which first allows the model to see the low res image and then creates detailed crops of input images as px squares based on the input image size.

See more [here](https://platform.openai.com/docs/guides/vision).

 Model ID

Drop-down list to select the desired version of the GPT Chatbot model (see more details [here](https://platform.openai.com/docs/models)). By default, the field is filled with the value _gpt--vision-preview_.

 Entity role

The role of the entity that is creating the message. The user value or the assistant value can be selected.

 Max tokens

See more [here](https://platform.openai.com/docs/guides/vision).

 Example of launching a node

It is necessary to run the node Vision once with the parameters:

- API Key \- Your API key;

- Text\- _What do the pictures have in common?_;

- Images\- The image is in base encoded string format;

- Detail \- _low_;

- Model ID \- _gpt--vision-preview;_

- Entity role \- _user_.

The result of the Vision node execution is to get an answer to the question about the images:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faab-fce-d-ada-ebb%FUntitled.png?table=block&id=ad-a-a-a-deddf&cache=v)

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcebc-dd-c-de-cafeed%FUntitled.png?table=block&id=ad-a--bc-cacdfd&cache=v)

 List Assistants

List Assistants is an action type node for getting a filtered list of ChatGPT chat assistants.

 Node Configuration

To configure the List Assistants node, you must fill in the required and optional fields.

The required \\ fields include:

- API Key.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbc-cd-c-f-aed%FUntitled.png?table=block&id=ad-a-a-a-eabd&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Limit

A limit on the number of objects to be [returned](https://platform.openai.com/docs/api-reference/assistants/listAssistants). Limit can range between  and , and the default is .

 Order

Drop-down list for selecting the sort order. Two values are available for selection: _Ascending order_, _Descending order_. If the parameter is not selected, the values will be sorted in the desc order.

 After

A cursor for use in pagination. Object ID (Assistant ID) that defines your place in the list. For instance, if you make a list request and receive  objects, ending with obj\_foo, your subsequent call can include after=obj\_foo in order to fetch the next page of the list.

 Before

A cursor for use in pagination. Object ID (Assistant ID) that defines your place in the list. For instance, if you make a list request and receive  objects, ending with obj\_foo, your subsequent call can include before=obj\_foo in order to fetch the previous page of the list.

 Example of launching a node

It is necessary to run the node List Assistants once with the parameters:

- API Key \- Your API key;

- Limit\- ;

- Order\- _Ascending order_;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbbaeed-bc-f--afbae%FUntitled.png?table=block&id=ad-a-f-af-eccfa&cache=v)

The result of the List Assistants node execution is a list of assistants, including attributes for each assistant:

- created\_at,

- description,

- file\_ids,

- id,

- instructions,

- metadata,

- model,

- name,

- object: assistant,

- tools.

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faef-c---ebd%FUntitled.png?table=block&id=ad-a-d-da-dedad&cache=v)

 List Files

List Files is an action type node for getting a list of ChatGPT files filtered by purpose.

 Node Configuration

To configure the List Files node, you must fill in the required and optional fields.

The required \\ fields include:

- API Key.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faae-bc-f-d-dfadf%FUntitled.png?table=block&id=ad-a--a-eceadedd&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Purpose

Drop-down list for selecting the purpose for which [files](https://platform.openai.com/docs/api-reference/files/list) are needed. Two values are available for selection: _assistants_, _fine-tune_. If no value is selected, the result will contain all files.

 Example of launching a node

It is necessary to run the node List Files once with the parameters:

- API Key \- Your API key;

- Purpose\- _assistants._

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fec-de-ed-abb-bd%FUntitled.png?table=block&id=ad-a-a-ab-fda&cache=v)

The result of the List Files node execution is a list of files, including attributes for each file:

- bytes;

- created\_at,

- filename,

- id,

- object: file,

- purpose: assistants or fine-tune;

- status;

- status\_details.

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faddbed-ef-eb-bbff-afeebb%FUntitled.png?table=block&id=ad-a-c--dddec&cache=v)

 List Messages

List Messages is an action type node for getting a filtered list of ChatGPT chat messages according to thread.

 Node Configuration

To configure the List Messages node, you must fill in the required and optional fields.

The required \\ fields include:

- API Key;

- Thread ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdbb-e--a-fadebb%FUntitled.png?table=block&id=ad-a---dfef&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Thread ID

The field required to specify the ID of the thread to messages should be received.

 Limit

A limit on the number of objects to be [returned](https://platform.openai.com/docs/api-reference/assistants/listAssistants). Limit can range between  and , and the default is .

 Order

Drop-down list for selecting the sort order. Two values are available for selection: _Ascending order_, _Descending order_. If the parameter is not selected, the values will be sorted in the desc order.

 After

A cursor for use in pagination. Object ID (Message ID) that defines your place in the list. For instance, if you make a list request and receive  objects, ending with obj\_foo, your subsequent call can include after=obj\_foo in order to fetch the next page of the list.

 Before

A cursor for use in pagination. Object ID (Message ID) that defines your place in the list. For instance, if you make a list request and receive  objects, ending with obj\_foo, your subsequent call can include before=obj\_foo in order to fetch the previous page of the list.

 Example of launching a node

It is necessary to run the node List Messages once with the parameters:

- API Key \- Your API key;

- Thread ID \- Your Thread ID;

- Limit\- ;

- Order\- _Ascending order._

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbc-ca-cf-ad-ebcdf%FUntitled.png?table=block&id=ad-a-da--dcea&cache=v)

The result of the List Messages node execution is a list of messages, including attributes for each message:

- assistant\_id,

- content,

- created\_at,

- file\_ids,

- id,

- metadata,

- object: thread.message,

- role: user or assistant,

- run\_id,

- thread\_id.

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcfc--e-e-ebfaf%FUntitled.png?table=block&id=ad-a--bb-daefaaee&cache=v)

 List Runs

List Runs is an action type node for getting a filtered list of ChatGPT chat runs according to thread.

 Node Configuration

To configure the List Runs node, you must fill in the required and optional fields.

The required \\ fields include:

- API Key;

- Thread ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffb----deddf%FUntitled.png?table=block&id=ad-a--da-dacafbbe&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Thread ID

The field required to specify the ID of the thread to runs should be received.

 Limit

A limit on the number of objects to be [returned](https://platform.openai.com/docs/api-reference/assistants/listAssistants). Limit can range between  and , and the default is .

 Order

Drop-down list for selecting the sort order. Two values are available for selection: _Ascending order_, _Descending order_. If the parameter is not selected, the values will be sorted in the desc order.

 After

A cursor for use in pagination. Object ID (Run ID) that defines your place in the list. For instance, if you make a list request and receive  objects, ending with obj\_foo, your subsequent call can include after=obj\_foo in order to fetch the next page of the list.

 Before

A cursor for use in pagination. Object ID (Run ID) that defines your place in the list. For instance, if you make a list request and receive  objects, ending with obj\_foo, your subsequent call can include before=obj\_foo in order to fetch the previous page of the list.

 Example of launching a node

It is necessary to run the node List Runs once with the parameters:

- API Key \- Your API key;

- Thread ID \- Your Thread ID;

- Limit\- ;

- Order\- _Descending order._

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faceb-ef-b-b-dfced%FUntitled.png?table=block&id=ad-a-f-c-fecd&cache=v)

- assistant\_id,

- cancelled\_at,

- completed\_at,

- created\_at,

- expires\_at,

- failed\_at,

- file\_ids,

- id,

- instructions,

- last\_error,

- metadata,

- model,

- object: thread.run,

- started\_at,

- status,

- thread\_id,

- tools,

- usage.

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffb-ebe--bf-babf%FUntitled.png?table=block&id=ad-a-ea--daaaef&cache=v)

 Retrieve Assistant

Retrieve Assistant is an action type node for getting information about a given assistant by its ID.

 Node Configuration

To configure the Retrieve Assistant node, you must fill in the required fields.

The required \\ fields include:

- API Key;

- Assistant ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Facbf-e-e-ada-bbcb%FUntitled.png?table=block&id=ad-a-b-b-eadd&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Assistant ID

The field for entering the identifier of the assistant for which information is to be obtained.

 Example of launching a node

It is necessary to run the node Retrieve Assistant once with the parameters:

- API Key \- Your API key;

- Assistant ID \- Your Assistant ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdd-ce--e-abec%FUntitled.png?table=block&id=ad-a--b-eceef&cache=v)

The result of the Retrieve Assistant node execution is information about the requested assistant, including:

- created\_at,

- description,

- file\_ids,

- id,

- instructions,

- metadata,

- model,

- name,

- object: assistant,

- tools.

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffdc-b-e-b-bab%FUntitled.png?table=block&id=ad-a-c-c-cedd&cache=v)

 Retrieve Message

Retrieve Message is an action type node for getting information about a given message by its ID and thread ID.

 Node Configuration

To configure the Retrieve Message node, you must fill in the required fields.

The required \\ fields include:

- API Key;

- Thread ID;

- Message ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbeca-f-c-bc-aeeaef%FUntitled.png?table=block&id=ad-a--be-dbeb&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Thread ID

A field for entering the ID of the thread to which the message belongs.

 Message ID

The field for entering the identifier of the message for which information is to be obtained.

 Example of launching a node

It is necessary to run the node Retrieve Message once with the parameters:

- API Key \- Your API key;

- Thread ID \- Your Thread ID;

- Message ID\- Your Message ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbec-c-f-aea-eabbeb%FUntitled.png?table=block&id=ad-a--acca-fefe&cache=v)

The result of the Retrieve Message node execution is information about the requested message, including:

- assistant\_id,

- content,

- created\_at,

- file\_ids,

- id,

- metadata,

- object: thread.message,

- role: user or assistant,

- run\_id,

- thread\_id.

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcde-e--c-bafde%FUntitled.png?table=block&id=ad-a-f-bfbf-ebbbddd&cache=v)

 Retrieve Run

Retrieve Run is an action type node for getting information about a given run by its ID and thread ID.

 Node Configuration

To configure the Retrieve Run node, you must fill in the required fields.

The required \\ fields include:

- API Key;

- Thread ID;

- Run ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcdb-cb-c-b-daedede%FUntitled.png?table=block&id=ad-a--ad-ebbbcd&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Thread ID

A field for entering the ID of the thread to which the run belongs.

 Run ID

The field for entering the identifier of the run for which information is to be obtained.

 Example of launching a node

It is necessary to run the node Retrieve Run once with the parameters:

- API Key \- Your API key;

- Thread ID \- Your Thread ID;

- Run ID\- Your Run ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffcea-b--abff-badbecc%FUntitled.png?table=block&id=ad-a--aa-cefaf&cache=v)

The result of the Retrieve Run node execution is information about the requested run, including:

- assistant\_id,

- cancelled\_at,

- completed\_at,

- created\_at,

- expires\_at,

- failed\_at,

- file\_ids,

- id,

- instructions,

- last\_error,

- metadata,

- model,

- object: thread.run,

- started\_at,

- status,

- thread\_id,

- tools,

- usage.

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcbced-de-e-f-acedfa%FUntitled.png?table=block&id=ad-a--ae-ce&cache=v)

 Retrieve Thread

Retrieve Thread is an action type node for getting information about a given thread by its ID.

 Node Configuration

To configure the Retrieve Thread node, you must fill in the required fields.

The required \\ fields include:

- API Key;

- Thread ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffdb-d-dae-ec-cfec%FUntitled.png?table=block&id=ad-a--a-decfa&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Thread ID

The field for entering the identifier of the thread for which information is to be obtained.

 Example of launching a node

It is necessary to run the node Retrieve Thread once with the parameters:

- API Key \- Your API key;

- Thread ID \- Your Thread ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbfecfd-fd-cfa-ae-aacdbaf%FUntitled.png?table=block&id=ad-a--eb-cebce&cache=v)

The result of the Retrieve Thread node execution is information about the requested thread, including:

- created\_at,

- id,

- metadata,

- object: thread.

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fba-ef-bae-cbd-fd%FUntitled.png?table=block&id=ad-a--aab-da&cache=v)

 Vision

Vision is an action type node is required to send an image and accompanying text to ChatGPT to generate a response regardless of assistants, threads and runs.

 Node Configuration

To configure the Vision node, you must fill in the required and optional fields.

The required \\ fields include:

- API Key.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbfb--ee-a-bcffb%FUntitled.png?table=block&id=ad-a--b-dafc&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Text

The text of the question on the image or images.

 Images

The image is in URLs or base encoded string format. See more [here](https://platform.openai.com/docs/guides/vision).

 Detail

By controlling the detail parameter, which has three options, low, high, or auto, you have control over how the model processes the image and generates its textual understanding. By default, the model will use the auto setting which will look at the image input size and decide if it should use the low or high setting.

- low will disable the “high res” model. The model will receive a low-res px x px version of the image. This allows the to return faster responses and consume fewer input tokens for use cases that do not require high detail.

- high will enable “high res” mode, which first allows the model to see the low res image and then creates detailed crops of input images as px squares based on the input image size.

See more [here](https://platform.openai.com/docs/guides/vision).

 Model ID

Drop-down list to select the desired version of the GPT Chatbot model (see more details [here](https://platform.openai.com/docs/models)). By default, the field is filled with the value _gpt--vision-preview_.

 Entity role

The role of the entity that is creating the message. The user value or the assistant value can be selected.

 Max tokens

See more [here](https://platform.openai.com/docs/guides/vision).

 Example of launching a node

It is necessary to run the node Vision once with the parameters:

- API Key \- Your API key;

- Text\- _What do the pictures have in common?_;

- Images\- The image is in base encoded string format;

- Detail \- _low_;

- Model ID \- _gpt--vision-preview;_

- Entity role \- _user_.

The result of the Vision node execution is to get an answer to the question about the images:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faab-fce-d-ada-ebb%FUntitled.png?table=block&id=ad-a---cfdfabd&cache=v)