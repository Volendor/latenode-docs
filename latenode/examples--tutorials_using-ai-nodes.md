---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/using-ai-nodes/DTZDaggCysnzYAVGP"
title: "Using AI nodes – Latenode | Help Center"
---

 Using AI nodes

Implementing AI-based automation.


Table of contents:

. Using AI Speech-to-Text group nodes

. Using AI nodes to assist with writing a blog article

. Using AI for ASR and text summarization

. Using AI to analyze the sentiment of a text

. Using AI to Draft Responses to User Emails

 Using AI Speech-to-Text group nodes



Link to the [scenario template](https://app.latenode.com/shared-scenarios/ffafcdbe)

As an example of using nodes of the AI Speech-To-Text group, let's create a scenario where an audio file will be passed for processing. The outcome of the scenario will be a text generated from the content of the audio file.

Several nodes must be added for the scenario to work successfully:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbcc-ffb-db-bb-fcfdbc%FUntitled.png?table=block&id=d-a-a--caed&cache=v)

- (  ) A Trigger on Webhook node to whose URL is sent a POST request containing a file;

- (  ) A NVIDIA Canary-B (Free Preview) node to process the file content. The file content can be an output parameter of the Trigger on Webhook node . To make the node return a response immediately without waiting for the results of file processing, the Async parameter should be checked.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffe-f-e-c-ae%FUntitled.png?table=block&id=d-a-b--efa&cache=v)

- (  ) A NVIDIA Canary-B - Check result (Free Preview) node to get the result of file processing. The ID can be obtained from the NVIDIA Canary-B (Free Preview) node parameters. File processing takes some time, so the output parameters of the node will not show the result, but the initial status will be displayed;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Febbbe-f-e-bf-cfebfae%FUntitled.png?table=block&id=d-a-ab-e-fbcdcda&cache=v)

- (  ) Wait node, to set the wait time, e.g.  seconds;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faa-cd-f--bdcea%FUntitled.png?table=block&id=d-a-e-ab-dedbc&cache=v)

- (  ) A Node NVIDIA Canary-B - Check result (Free Preview) to retrieve the result of file processing. After waiting for a while, the processing status will already be complete and the node will have a response in its output parameters;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fc-a-fd-ee-dbcef%FUntitled.png?table=block&id=d-a--b-cbea&cache=v)

- (  ) A Webhook response node, to send the result of the scenario execution.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fccc-c-e-ad-cef%FUntitled.png?table=block&id=d-a-a-c-eeece&cache=v)

The output of the scenario is text:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdad---ba-aec%FUntitled.png?table=block&id=d-a-a--edbeb&cache=v)

 Using AI nodes to assist with writing a blog article



Link to the [scenario template](https://app.latenode.com/shared-scenarios/accefbcdaaf)

As an example of using AI nodes, let's create a scenario, during the execution of which we will analyze the proposed short text and form a blog article according to the given rules.

For convenience of using such a scenario we can create a table AirTable with columns:

- Summary \- for the user to enter the idea and brief content of the article;

- Detailed content \- for filling in the result of the scenario execution;

- Date \- to record the date of text generation.

To generate the text of the article we will use the node mistral-b-instruct-v.-awq With History (preview) from the group AI: Text Generation.

Several nodes must be added for the scenario to work successfully:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbec-f-de-cc-bfa%FUntitled.png?table=block&id=d-a--aaad-eeaef&cache=v)

- (  ) A New Records node to run a scenario when a new row is added to the LNBlog table . One of the output parameters of the node is the Summary attribute of the added row containing the article idea. Authorization is required for correct operation of the node;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fddfe--fd-aeec-aaddee%FUntitled.png?table=block&id=d-a-d--cdfa&cache=v)

- (  ) Node mistral-b-instruct-v.-awq With History (preview) to generate the article text. In the Dialogue History field you need to add instructions in JSON format that will be used by AI when generating the article text. The User Prompt field should be filled with the value of the Summary attribute of the Summary row of the LNBlog table, which is provided by the New Records node;

```
 [{\
 "role": "system",\
 "content": "Determine the topic of the article. Carefully analyze the query that will serve as the basis for the article. Identify key features and benefits that should be emphasized. Create text that allows Latenode users to better understand why they should be interested in this feature. The article should be structured into sections. An attention-grabbing headline and opening paragraph that will interest the reader and encourage them to read further is essential. The query provided should be the starting point for more extended paragraphs. The article should contain use cases and interesting facts, as well as opportunities to automate business processes. The article should have a bottom line, you need to highlight the main benefits of using the platform and give readers a clear idea of its value. After creating the text, you should check it for grammatical errors, logical consistency and clarity of presentation."\
 }]
```

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcc-ddb--bba-afeef%FUntitled.png?table=block&id=d-a-fe-ace-fdcc&cache=v)

- (  ) Update record node to update the Detailed content attribute of a row in the LNBlog table with the value generated in the mistral-b-instruct-v.-awq With History (preview) node. The current time and date value can be entered as the date of text generation using the `now` operator. Authorization is required for correct operation of the node;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbeba-a-ca-ae-cfafef%FUntitled.png?table=block&id=d-a-a-bc-febae&cache=v)

- (  ) Webhook response node to generate a response to the scenario execution.

The result of the scenario execution is the "Ok" response of the Webhook response node and the AI generated text of the article in the LNBlog table:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffc-da-b-b-eecad%FUntitled.png?table=block&id=d-a-e-c-fff&cache=v)

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbf-aa-e-bb-fce%FUntitled.png?table=block&id=d-a-b-a-ebbeafd&cache=v)

 Using AI for ASR and text summarization



Link to the [scenario template](https://app.latenode.com/shared-scenarios/acefbcdaa)

As an example of using AI nodes, let's create a scenario that will:

- process the provided audio file;

- generate the full text content of the file;

- generate a brief text content of the file;

- send a notification e-mail to the user with the brief text content of the text file.

To process the audio file and generate the text we will use the nodes whisper (preview) from the group AI: Automatic Speech Recognition and bart-large-cnn (preview) from the group AI: Summarization.

Several nodes must be added for the scenario to work successfully:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbab-b-ef-b-abce%FUntitled.png?table=block&id=d-a--ba-ffdef&cache=v)

- (  ) Trigger on Webhook node to whose URL a POST request containing a file is sent;

- (  ) whisper (preview) node to process the audio file. The content of the file is the output parameter of the Trigger on Webhook node ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fedf-d-cf-f-edcb%FUntitled.png?table=block&id=d-a-b-beb-eedcf&cache=v)

- (  ) Create New Document from Text node for writing the text resulting from audio file processing to Google disk. The name of the file can be anything, such as the current date and time. The text of the file is one of the output parameters of the whisper (preview) node. Authorization is required for correct operation of the node;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdddf-cdd--af-bccfbb%FUntitled.png?table=block&id=d-a-f-bc-feecd&cache=v)

- (  ) The bart-large-cnn (preview) node to process the text received in the whisper (preview) node and generate its summary. The maximum length of the node's response can be adjusted in the Max Length (Integer) field;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcc--a-ab-fcbbca%FUntitled.png?table=block&id=d-a--dcb-fbea&cache=v)

- (  ) Send Email node for sending an email to a specified mail address with a summary text generated in bart-large-cnn (preview) node. Authorization is required for the node to work correctly;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fedcf-daa-b-abd-dbbfc%FUntitled.png?table=block&id=d-a-fd-f-ecfd&cache=v)

The outputs of the scenario are:

- a file with text generated from the provided audio file;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdad-fd-a-ab-bbfc%Fdfef-f---cabadb.png?table=block&id=d-a-e-edf-eecade&cache=v)

- a letter summarizing the content of the audio file.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdfaa-ef-ca-aea-caba%FUntitled.png?table=block&id=d-a-e-f-fbbc&cache=v)

 Using AI to analyze the sentiment of a text



Link to the [scenario template](https://app.latenode.com/shared-scenarios/acdfefc)

As an example of using AI nodes to classify text, let's create a script whose execution will:

- analyze a message sent to a Telegram chat room;

- process the result of text classification and determine its "mood";

- send a notification email to the user with the content of the message, if the text is classified as negative;

- send a standard response to Telegram chat if the text is classified as positive.



Such a scenario can be used, for example, to respond to and evaluate user feedback.

For text processing we will use the node distilbert-sst--int (preview) from the group AI: Text Classification.

Several nodes and links with filters must be added for the script to work successfully:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fecba-a-c--bbdafb%FUntitled.png?table=block&id=d-a-f-adcc-cbeda&cache=v)

- (  ) New Message Updates node to run a script when a new message is sent to Telegram chat. In order for the node to work correctly, it is necessary to perform authorization and make sure that the bot is allowed to work with messages;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fedeea-ae--c-fceafd%FUntitled.png?table=block&id=d-a-fa-e-cddb&cache=v)

- (  ) Node distilbert-sst--int (preview) to process message text. The text is the output parameter of the New Message Updates node ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fababeb-fcc-d--aeb%FUntitled.png?table=block&id=d-a--a-dffa&cache=v)

- (  ) A JavaScript node to process the distilbert-sst--int (preview) node data and return a response with the code below. The code categorizes a message as negative if the `NEGATIVE` is greater than .. This number can be replaced if necessary:

```
export default async function run({execution_id, input, data, store}) {
    // Get the JSON string with classification results from the previous node and parse it into an array
    const classificationResults = JSON.parse(data["{{.`result`.`result`}}"]);

    // Variable to store the sum of negative scores
    let negativeScoreSum = ;

    // Iterate through the classification results and sum up the negative scores
    classificationResults.forEach(classification => {
        if (classification.label === 'NEGATIVE') {
            negativeScoreSum += classification.score;
        }
    });

    // Determine the overall result based on the sum of negative scores
    const overallResult = negativeScoreSum > . ? "negative" : "positive";

    // Return the result
    return {
        result: overallResult
    };
}
```

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fd-cd-f-b-fcffaac%FUntitled.png?table=block&id=d-a--c-edffd&cache=v)

- (  ) Send a Text Message or Reply node to send a standard message _"Thank you for your review, it is very important to us!"_ if the text is classified as positive. The output of the New Message Updates node can be used as the chat identifier;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faa-ca-e-f-cfcea%FUntitled.png?table=block&id=d-a-c-bd-fff&cache=v)

- (  ) Link negative before the Send a Text Message or Reply node with the filter condition `{{$.result != "negative"}}` set so that the script proceeds to execute the Send a Text Message or Reply node if the text is classified as positive;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fe--f-bc-cbacf%FUntitled.png?table=block&id=d-a--bbd-cfdaccab&cache=v)

- (  ) Send Email node for sending an email to a specified mail address with the text of a Telegram message and mentioning the negative coloring of the message. Authorization is required for the node to work correctly;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdfc-e---afbd%FUntitled.png?table=block&id=d-a---ddebf&cache=v)

- (  ) Link positive before the Send Email node with the filtering condition `{{$.result = "negative"}}` set so that the script proceeds to execute the Send Email node if the text is classified as negative;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feff-e-d-be-fbadfea%FUntitled.png?table=block&id=d-a-f-bbb-fae&cache=v)

The outcome of the script execution is one of two actions:

- sending a standard message to Telegram;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdebfe-be-aae-bde-ea%FUntitled.png?table=block&id=d-a-d-b-eefdbbcf&cache=v)

- a letter with a customized notice.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fadaa-ec-df-ae-ffccf%FUntitled.png?table=block&id=d-a-f-c-fdcdaefa&cache=v)

 Using AI to Draft Responses to User Emails

As an example of using AI nodes, let's create a scenario that triggers upon receiving a new Gmail message. The result will be a draft reply email with text generated by AI. During the scenario execution, we'll use AI to classify the text to determine if it contains a question. Based on the classification results, the instructions for drafting the reply will differ.

Since any AI model requires instructions that may vary, we'll define several variables in the scenario:

- Response format

- Response length

- Role of the responder

We'll use the AI Anthropic Claude  node from the AI ChatGPT Alternatives group to generate the text.

To successfully execute the scenario, we'll need to add several nodes and conditions in the routes:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faedc-e-c-bf-baccfb%FUntitled.png?table=block&id=d-a-a--fabbbdfb&cache=v)

- (  ) New Email node to trigger the scenario upon receiving a new email and to obtain its information. The output data will include the email content. Authorization is required to use this node.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdbdee-e-ef-a-eba%FUntitled.png?table=block&id=d-a-d-a-eabaeb&cache=v)

- (  ) SetVariables node to create the necessary text variables:

Length of the response - Length

Role of the responding user - Role

Format of the response - Format

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fb-cae-b-b-dccd%FUntitled.png?table=block&id=d-a-f-ade-caaacdde&cache=v)

- (  ) interrogative route to branch the scenario if the email is interrogative in nature. To configure this route, set the condition
`{{askAI("\rIf the text \"" + $.data.decodedContent + "\" contains the character \"?\" or is interrogative in nature return true, otherwise false") = "True"}}`

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcdac---b-bebbb%FUntitled.png?table=block&id=d-a-ce-d-ecfbe&cache=v)

- (  ) AI Anthropic Claude  interrogative node to generate a response to the interrogative email based on the given instructions. Configure this node by filling in the Model and User Prompt fields. The User Prompt field can be filled using the variables created in the SetVariables node, for example:

Generate a reply letter to the question `{{$.data.decodedContent}}`. In your reply, indicate that the question has been accepted and an answer will be generated soon. Recipient of the response `{{$.data.from}}`. Role of the responder `{{_.Role}}`. Format of the response is `{{_.Format}}`, and size of the response is `{{_.Length}}`.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fe-ce--af-acdfd%FUntitled.png?table=block&id=d-a-f-a-edce&cache=v)

- (  ) Create Draft Reply interrogative node to create a Gmail draft with the text generated by the AI Anthropic Claude  interrogative node. To configure this node, authorize access and select the parameters from the previous nodes.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffad-bc-fc-d-cffe%FUntitled.png?table=block&id=d-a-b-a-efaafcfb&cache=v)

- (  ) narrative route to branch the scenario if the email is not interrogative, i.e., the interrogative route condition is not met. To configure this route, set the condition:
`{{askAI("\rIf the text \"" + $.data.decodedContent + "\" contains the character \"?\" or is interrogative in nature return true, otherwise false") != "True"}} `

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faad-aad--af-aef%FUntitled.png?table=block&id=d-a-a-b-dc&cache=v)

- (  ) AI Anthropic Claude  narrative node to generate a response to the non-interrogative email based on the given instructions. Configure this node by filling in the Model and User Prompt fields. The User Prompt field can be filled using the variables created in the SetVariables node, for example:

Generate a draft response to a letter with the text `{{$.data.decodedContent}}`. Recipient of the response `{{$.data.from}}`. Role of the responder `{{_.Role}}`. Format of the response is `{{_.Format}}`, and size of the response is `{{_.Length}}`.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbede-a--f-baaadc%FUntitled.png?table=block&id=d-a-af-a-dcfbab&cache=v)

- (  ) Create Draft Reply narrative node to create a Gmail draft with the text generated by the AI Anthropic Claude  narrative node. To configure this node, authorize access and select the parameters from the previous nodes.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdd-b-bb-ac-cfe%FUntitled.png?table=block&id=d-a-af-c-dedcbbbc&cache=v)

The result of the scenario execution is a draft reply email with content generated by AI.

 Example 

Incoming Email:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fc-fc-bd-c-debf%FUntitled.png?table=block&id=d-a--c-dadee&cache=v)

Generated Draft:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fda-cb-ad-b-bebfce%FUntitled.png?table=block&id=d-a--e-fcbefd&cache=v)

 Example 

Incoming Email:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Febadf-bda-fd-bec-ecec%FUntitled.png?table=block&id=d-a--bb-ebaeceb&cache=v)

Generated Draft:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faf--cf-be-aefe%FUntitled.png?table=block&id=d-a--a-fcd&cache=v)

 Example 

Incoming Email:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faa-af--d-dfbeddd%FUntitled.png?table=block&id=d-a-af-ba-cfcc&cache=v)

Generated Draft:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feed-cb-c-a-dcef%FUntitled.png?table=block&id=d-a-d-e-caacd&cache=v)

 Example 

Incoming Email:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fe-e--be-fabf%FUntitled.png?table=block&id=d-a--adb-cdbed&cache=v)

Generated Draft:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcef-de-b--fdd%FUntitled.png?table=block&id=d-a-a-ae-ffbfdee&cache=v)