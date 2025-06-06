---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/chatgpt-assistant-/eHdUXtpgcbNrCrjsjJo"
title: "ChatGPT Assistant  – Latenode | Help Center"
---

 ChatGPT Assistant

Integrating ChatGPT for AI-powered automation.


![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feedd-f-e-bf-fcd%FUntitled.png?table=block&id=ad-a-d-cc-cdd&cache=v)

 Create Assistant

Create Assistant - an action type node required to create a GPT Chatbot assistant.

 Node Configuration

To configure the Create Assistant node, you must fill in the required and optional fields.

Required \ fields include:

- API Key;

- Model ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffbb--b-abd-cbfcd%FUntitled.png?table=block&id=ad-a-fe-aa-dfbfceed&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Model ID

Drop-down list to select the desired version of the GPT Chatbot model (see more details [here](https://platform.openai.com/docs/models)). By default, the field is filled with the value gpt-.-turbo.

 File IDs list

A field for entering file IDs that the assistant can use, for example, to write code, if these features are enabled.

The following format for entering file IDs is used: `["file-abc","file-abc"]`.

 Metadata

The field required to enter additional information about the assistant in the key-value format. The key can contain  characters, and the value can contain  characters.

 Assistant name

A field for entering the name of the assistant. The name can contain up to  characters.

 Description

A field for entering a description of the assistant. The description can contain up to  characters.

 System instructions

A field for entering instructions for the assistant.

 Tools

Fields for configuring the assistant with the option to select true/false:

- Code interpreter(Tools) - The setting allows the assistant to write and run Python code in an isolated runtime environment. This tool can process files with a variety of data and formatting, as well as create files with data and graph images. The code Interpreter allows your Assistant to iteratively run code to solve complex code and mathematical problems. For more information, see [here](https://platform.openai.com/docs/assistants/tools/code-interpreter).

- Retrieval(Tools) - Extraction complements the assistant with knowledge beyond its model, such as private product information or documents provided by your users. After the file is uploaded and transferred to the assistant, the documents are automatically divided into parts, indexed and attachments are saved. For more information, see [here](https://platform.openai.com/docs/assistants/tools/knowledge-retrieval).

 Function(Tools)

A field for entering a function that the assistant can use. Assistants API supports function calling. Function calling allows you to describe functions to the Assistants and have it intelligently return the functions that need to be called along with their arguments. The Assistants API will pause execution during a Run when it invokes functions, and you can supply the results of the function call back to continue the Run execution.

For more information, see [here](https://platform.openai.com/docs/assistants/tools/function-calling).

The following function input format is used:
`[{"type": "function", "function": {"name": "function_name","parameters": {},"description": "function_description"}]`

 Example of launching a node

It is necessary to run the Create Assistant node once with the parameters:

- API Key \- Your API key ;

- Model ID \- gpt-.-turbo ;

- Assistant name \- _Latenode platform assistant_;

- Description \- _An assistant answering questions about the user's work on the Latenode platform, for example, about creating scenarios, nodes, routes_.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcdaee-bf-b-df-cdbc%FUntitled.png?table=block&id=ad-a-d-f-dddfce&cache=v)

The result of the node execution is the creation of an assistant named assistant _Latenode platform assistant._ The output data of the node Create Assistant are the parameters of the assistant:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffbafc----bbceb%FUntitled.png?table=block&id=ad-a-ee-ba-fcfcacb&cache=v)

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbfc-e-a-ace-fbe%FUntitled.png?table=block&id=ad-a--d-ebed&cache=v)

 Create Run

Create Run an action type node required to create a run for which the assistant will start processing messages.

 Node Configuration

To configure the Create Run node, you must fill in the required and optional fields.

The required \ fields include:

- API Key;

- Thread ID;

- Assistant ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feeda-dc-a-bee-cfccb%FUntitled.png?table=block&id=ad-a--bffb-dbe&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Thread ID

The field required to specify the ID of the thread in which the message processing should be started.

 Assistant ID

The field required to specify the ID of the assistant that will process the thread messages after run.

 Metadata

The field required to enter additional information about the assistant in the key-value format. The key can contain  characters, and the value can contain  characters.

 System instructions

A field for entering instructions for run.

 Model ID

Drop-down list to select the desired version of the GPT Chatbot model (see more details [here](https://platform.openai.com/docs/models)). By default, the field is filled with the _gpt-_ value.

 Tools

Fields for configuring the assistant with the option to select true/false:

- Code interpreter(Tools) - The setting allows the assistant to write and run Python code in an isolated runtime environment. This tool can process files with a variety of data and formatting, as well as create files with data and graph images. The code Interpreter allows your Assistant to iteratively run code to solve complex code and mathematical problems. For more information, see [here](https://platform.openai.com/docs/assistants/tools/code-interpreter).

- Retrieval(Tools) - Extraction complements the assistant with knowledge beyond its model, such as private product information or documents provided by your users. After the file is uploaded and transferred to the assistant, the documents are automatically divided into parts, indexed and attachments are saved. For more information, see [here](https://platform.openai.com/docs/assistants/tools/knowledge-retrieval).

 Function(Tools)

A field for entering a function that the assistant can use. Assistants API supports function calling. Function calling allows you to describe functions to the Assistants and have it intelligently return the functions that need to be called along with their arguments. The Assistants API will pause execution during a Run when it invokes functions, and you can supply the results of the function call back to continue the Run execution.

For more information, see [here](https://platform.openai.com/docs/assistants/tools/function-calling).

The following function input format is used:
`[{"type": "function", "function": {"name": "function_name","parameters": {},"description": "function_description"}]`

 Example of launching a node

It is necessary to run the node Create Run once with the parameters:

- API Key \- Your API key;

- Thread ID \- ID of an existing platform thread;

- Assistant ID \- ID of an existing platform assistant.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffa-f-e-f-ddac%FUntitled.png?table=block&id=ad-a--b-caefab&cache=v)

The result of node execution is the creation of a run for processing and receiving a response to a message from a specified thread by a specified assistant:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feb-cea-b-cf-efefa%FUntitled.png?table=block&id=ad-a--be-edbd&cache=v)

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbc-eb-b-ab-edcdfd%FUntitled.png?table=block&id=ad-a-c--efddd&cache=v)

 Delete Thread

Delete Thread an action type node required to delete a previously created thread.

 Node Configuration

To configure the Delete Thread node, you must fill in the required fields.

The required \ fields include:

- API Key;

- Thread ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fddeaa--a-ab-eeccb%FUntitled.png?table=block&id=ad-a-f--dcdecaeb&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Thread ID

The field required to specify the ID of the thread to be deleted.

 Example of launching a node

It is necessary to run the Delete Thread node once with the parameters:

- API Key \- Your API key;

- Thread ID \- ID of the previously created thread.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fe-ab-c-ab-dcdb%FUntitled.png?table=block&id=ad-a-d-bf-dcdbd&cache=v)

The result of node execution is the deletion of a previously created thread. The output data of the Delete Thread node is the deletion status and the thread ID:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fadaee-eda-ff-dd-eaced%FUntitled.png?table=block&id=ad-a-f-a-cbaded&cache=v)

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcefe-eed-b--aeafd%FUntitled.png?table=block&id=ad-a-f--faeae&cache=v)

 Send Message

Send Message - an action type node required to send a GPT Chatbot message and receive a response, regardless of assistants, threads, and runs. When sending a message, you can select the GPT Chatbot version.

 Node Configuration

To configure the Send Message node, you must fill in the required and optional fields.

Required \ fields include:

- Message;

- API Key.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fc-ae-ca-bf-bfecc%FUntitled.png?table=block&id=ad-a-f-aaa-ffedce&cache=v)

 Message

The field required for entering the text of the message to the GPT chatbot.



In the Message field, you can enter text, variables from other nodes, or parameters from responses of other nodes.

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 GPT Version

A field for selecting the desired version of the GPT chatbot model (see more details [here](https://platform.openai.com/docs/models)). By default, the field is filled with the value _gpt-.-turbo_.

 Example of Node Usage

To receive a response from the GPT chatbot, you need to create a scenario with nodes:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbbfac-c-be-d-adcd%FUntitled.png?table=block&id=ad-a--d-eeeae&cache=v)

\. Trigger on Webhook node is used to trigger the scenario and pass a text question, for example, _What is the most popular programming language?;_

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fefc-b-c-af-bff%FUntitled.png?table=block&id=ad-a-c-abc-dcfeca&cache=v)

\. Send Message node is used to send the question to the GPT chatbot;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faa-ca--aa-befde%FUntitled.png?table=block&id=ad-a--ae-fabdc&cache=v)

\. Webhook response for receiving a response to a message.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faeaadf-e-f-bc-fecab%FUntitled.png?table=block&id=ad-a--ba-ccdbcca&cache=v)

The result of executing this scenario is the response from the GPT chatbot, for example:

_As of , the most popular programming language is JavaScript. It is widely used for web development and is supported by all major web browsers. Other popular programming languages include Python, Java, C++, and C. The popularity of programming languages can vary depending on the specific domain or industry._

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ff--c-af-cbeaafc%FUntitled.png?table=block&id=ad-a--bff-fdeda&cache=v)

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffcd--eaf-b-cbff%FUntitled.png?table=block&id=ad-a-d-a-dffbde&cache=v)

 Create Message

Create Message - an action type node required to send a GPT chatbot message using a given thread.

 Node Configuration

To configure the Create Message node, you must fill in the required and optional fields.

Required \ fields include:

- Message content;

- API Key;

- Thread ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdc--f-bd-bbeb%FUntitled.png?table=block&id=ad-a-c-acb-ebcff&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Thread ID

The field required to specify the ID of the thread to which the message should be sent.

 Message content

The text field required to enter the message.

 File IDs list

A list of File IDs that the message should use. There can be a maximum of  files attached to a message.

 Metadata

The field required to enter additional information about the assistant in the key-value format. The key can contain  characters, and the value can contain  characters.

 Entity role

The role of the entity that is creating the message. Currently only _user_ is supported.

 Example of launching a node

It is necessary to run the Create Message node once with the parameters:

- API Key \- Your API key ;

- Thread ID \- id of the previously created thread ;

- Message content \- _How do I add a node to the scenario?_;

- Entity role \- User.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fabd-b--bc-befdb%FUntitled.png?table=block&id=ad-a-a-afab-fcd&cache=v)

The result of the node execution is the creation of a message with the specified text. The output of the Create Message node is the message parameters.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fa-e-a-bfc-cc%FUntitled.png?table=block&id=ad-a--ae-eae&cache=v)

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbfcdfa-d--afe-bbe%FUntitled.png?table=block&id=ad-a--bc-ebaf&cache=v)

 Create Thread

Create Thread\- an action type node required to create a thread.

 Node Configuration

To configure the Create Thread node, you must fill in the required and optional fields.

Required \ fields include:

- API Key.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fefbc--e-f-dffdfb%FUntitled.png?table=block&id=ad-a-f-bba-faaabcc&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 New message

A field with the option to select true/false. If true is checked, a message will be sent in the Message content field when creating a thread. If false is checked, the thread will be created empty.

 Message content

The text field required to enter the message.

 File IDs list

A list of File IDs that the message should use. There can be a maximum of  files attached to a message.

 Metadata

The field required to enter additional information about the assistant in the key-value format. The key can contain  characters, and the value can contain  characters.

 Entity role

The role of the entity that is creating the message. Currently only _user_ is supported.

 Example of launching a node

It is necessary to run the Create Thread node once with the parameters:

- API Key \- Your API key ;

- New message \- true ;

- Message content \- _Welcome to the Latenode platform! I am waiting for your questions_;

- Entity role \- User.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcdcf-ed--bde-dcfaa%FUntitled.png?table=block&id=ad-a-d-aafc-fddaec&cache=v)

The result of node execution is the creation of a thread with the specified message (if such a setting has been made). The output data of the Create Thread node are the parameters of the thread.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcdfb--e-ec-edaeec%FUntitled.png?table=block&id=ad-a-ea-c-eadacaf&cache=v)

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ff-e--afdd-ecd%FUntitled.png?table=block&id=ad-a-a-bb-ccab&cache=v)

 GPT . turbo instruct

GPT . turbo instruct - an action type node required to send a GPT Chatbot message of the gpt-.-turbo-instruct version and receive a response regardless of assistants, threads and runs. When sending a message, the choice of the GPT Chatbot version is NOT available.

 Node Configuration

To configure the GPT . turbo instruct node, you must fill in the required and optional fields.

Required \ fields include:

- Message;

- API Key.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcfaf-ab--bf-cc%FUntitled.png?table=block&id=ad-a---ecbd&cache=v)

 Message

The field required for entering the text of the message to the GPT Chatbot.



In the Message field, you can enter text, variables from other nodes, or parameters from responses of other nodes.

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Example of launching a node

It is necessary to run the GPT . turbo instruct node once with the parameters:

- API Key \- Your API key ;

- Message \- _What is the most popular programming language?_.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fde-ab-bd-e-ed%FUntitled.png?table=block&id=ad-a-a-f-caebbddfc&cache=v)

The result of node execution is the formation of a response to a given message. The output data of the GPT . turbo instruct node are message parameters, including `text`.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fe--fe-f-ededdc%FUntitled.png?table=block&id=ad-a-f-b-edbdd&cache=v)

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcab-ab-b-ad-ffbad%FUntitled.png?table=block&id=ad-a--fec-cdba&cache=v)

 Delete Assistant

Delete Assistant an action type node required to delete a previously created assistant.

 Node Configuration

To configure the Delete Assistant node, you must fill in the required fields.

The required \ fields include:

- API Key;

- Assistant ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faa-b-bdb--beadf%FUntitled.png?table=block&id=ad-a--cbd-eebcc&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Assistant ID

The field required to specify the ID of the assistant to be deleted.

 Example of launching a node

It is necessary to launch the Delete Assistant node once with the parameters:

- API Key \- Your API key ;

- Assistant ID \- the ID of the previously created assistant.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcaed-be-e-ba-acaed%FUntitled.png?table=block&id=ad-a-e--fcfce&cache=v)

The result of the node execution is the deletion of the previously created assistant. The output data of the Delete Assistant node is the delete status and the assistant ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdeaecc-d-a-df-cddf%FUntitled.png?table=block&id=ad-a-c-aa-fdcabbb&cache=v)

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdfd-de---eaca%FUntitled.png?table=block&id=ad-a-e-b-dfcace&cache=v)

 Download File

Download File\- an action type node required for downloading chatbot files uploaded to GPT.

 Node Configuration

To set up the Download File node, you must fill in the required fields.

Required \ fields include:

- API Key;

- File ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fccedc-eb--bd-abff%FUntitled.png?table=block&id=ad-a-c-bd-fb&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 File ID

ID of the previously uploaded file that needs to be downloaded.

 Example of launching a node

It is necessary to launch the Download File node once with the parameters:

- API Key \- Your API key ;

- File ID \- ID of the previously uploaded file.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fefe--a-df-afdbd%FUntitled.png?table=block&id=ad-a--fe-cdbff&cache=v)

The result of node execution is file download. The output data of the Download File node is the file parameters, including the content.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffa-b-a-ae-addcb%FUntitled.png?table=block&id=ad-a-cf-d-cfefbda&cache=v)

  

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faba---af-cacff%FUntitled.png?table=block&id=ad-a-d-a-fdfadd&cache=v)

 Modify Assistant

Modify Assistant \- an action type node required to modify an already created GPT Chatbot assistant.

 Node Configuration

To configure the Modify Assistant node, you must fill in the required and optional fields.

Required \ fields include:

- API Key;

- Assistant ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%F-ddef-a-a-aaaeeb%FUntitled.png?table=block&id=ad-a-a-af-efbaece&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Assistant ID

A field for entering the ID of the assistant whose parameters need to be replaced.

 Model ID

Drop-down list to select the desired version of the GPT Chatbot model (see more details [here](https://platform.openai.com/docs/models)). By default, the field is filled with the value gpt-.-turbo.

 File IDs list

A field for entering file IDs that the assistant can use, for example, to write code, if these features are enabled.

The following format for entering file IDs is used:

`["file-abc","file-abc"]`.

 Metadata

The field required to enter additional information about the assistant in the key-value format. The key can contain  characters, and the value can contain  characters.

 Assistant name

A field for entering the name of the assistant. The name can contain up to  characters.

 Description

A field for entering a description of the assistant. The description can contain up to  characters.

 System instructions

A field for entering instructions for the assistant.

 Tools

Fields for configuring the assistant with the option to select true/false:

- Code interpreter(Tools) - The setting allows the assistant to write and run Python code in an isolated runtime environment. This tool can process files with a variety of data and formatting, as well as create files with data and graph images. The code Interpreter allows your Assistant to iteratively run code to solve complex code and mathematical problems. For more information, see [here](https://platform.openai.com/docs/assistants/tools/code-interpreter).

- Retrieval(Tools) - Extraction complements the assistant with knowledge beyond its model, such as private product information or documents provided by your users. After the file is uploaded and transferred to the assistant, the documents are automatically divided into parts, indexed and attachments are saved. For more information, see [here](https://platform.openai.com/docs/assistants/tools/knowledge-retrieval).

 Function(Tools)

A field for entering a function that the assistant can use. Assistants API supports function calling. Function calling allows you to describe functions to the Assistants and have it intelligently return the functions that need to be called along with their arguments. The Assistants API will pause execution during a Run when it invokes functions, and you can supply the results of the function call back to continue the Run execution.

For more information, see [here](https://platform.openai.com/docs/assistants/tools/function-calling).

The following function input format is used:
`[{"type": "function", "function": {"name": "function_name","parameters": {},"description": "function_description"}]`

 Example of launching a node

It is necessary to run the Modify Assistant node once with the parameters:

- API Key \- Your API key ;

- Assistant ID \- ID of the previously created assistant;

- Model ID \- gpt-.-turbo ;

- Assistant name \- _Latenode platform assistant version ._

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fccca-f--ad-cbda%FUntitled.png?table=block&id=ad-a-bc-bc-cfde&cache=v)

The result of the node execution is the change of the previously created assistant, including its name to _Latenode platform assistant version _. The output data of the Modify Assistant node are the assistant parameters:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ff-eea-bd-a-ddcca%FUntitled.png?table=block&id=ad-a--bfdb-febebf&cache=v)

  

 Modify Run

Modify Run is an action type node required to change the run metadata in the selected GPT chatbot thread.

 Node Configuration

To configure the Modify Run node, you must fill in the required and optional fields.

The required \ fields include:

- Run ID;

- API Key;

- Thread ID.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbcda-ca-e-ade-daa%FUntitled.png?table=block&id=ad-a-bc-ca-dbda&cache=v)

 API Key

The field required for entering the API key (see more details [here](https://platform.openai.com/docs/api-reference/authentication)).

 Thread ID

The field required to specify the ID of the thread in which the run needs to be changed.

 Run ID

ID of the run whose metadata needs to be changed.

 Metadata

The field required to enter additional information about the assistant in the key-value format. The key can contain  characters, and the value can contain  characters.