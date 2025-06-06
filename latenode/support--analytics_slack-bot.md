---
url: "https://help.latenode.com/support--analytics/DTZDagfcsSJdCyLcX/slack-bot/kEYxeVUDozrrPEopi"
title: "Slack bot – Latenode | Help Center"
---

 Slack bot

Automating Slack bot interactions.


 Receiving a token

️

Before following the instructions, you need to sign up for Slack and create a workspace.

For nodes of the Slack bot group to work, it is necessary to get a token and perform authorization.

To obtain a token you need to:

\. Go to [link](https://api.slack.com/apps) and create an app by clicking on Create New App;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fadc----fa%FUntitled.png?table=block&id=d-a-c-f-cedf&cache=v)

\. In the Create an app window, select the From scratch option;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fa-e--aed-dfed%FUntitled.png?table=block&id=d-a--b-cecabdc&cache=v)

\. Customize the app - fill in the name and select the desired Slack space. Click the Create App button;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdedbecd-a-af-af-cdecba%FUntitled.png?table=block&id=d-a-bb-bf-dab&cache=v)

\. On the application settings page, click the OAuth & Permissions tab;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdaeda-ee-d-a-da%FUntitled.png?table=block&id=d-a-df-bde-cdbcefa&cache=v)

\. In the Scopes block, define the permissions available to the Slack bot;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcb-db-d-b-cdecefde%FUntitled.png?table=block&id=d-a-a-be-dafadb&cache=v)

\. In the OAuth Tokens for Your Workspace block, click the Install to Workspace button.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbfb-dcd-f--afcc%FUntitled.png?table=block&id=d-a--f-fedddd&cache=v)

\. Confirm accesses by pressing the Allow button;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fb-dbf-c-e-ebc%FUntitled.png?table=block&id=d-a-f--fabb&cache=v)

\. In the OAuth Tokens for Your Workspace block, view and copy the Bot User OAuth Token;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdaab-dd-b-c-def%FUntitled.png?table=block&id=d-a-f-bc-ebbdeebfc&cache=v)

\. Add a bot to the required channel by sending the message `/invite @<botname>` to this channel, where `<botname>` is the name of the bot (corresponds to the name of the application that was created in the above step);

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdbeca-daa-af-b-acbdcb%FUntitled.png?table=block&id=d-a-e-f-eaeb&cache=v)

\. View the availability of a bot added to the channel;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feefe--cf-b-fabb%FUntitled.png?table=block&id=d-a-d-bec-fccae&cache=v)

 Configuring authorization in nodes

When configuring a node in the Slack bot group, authorization is required. To do this, you need to:

\. Select the required node from the Slack bot group ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcba-df-b-e-a%FUntitled.png?table=block&id=d-a-ed-a-fddeddaae&cache=v)

\. Click the Create an authorization button;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fceaa-d-c-ac-bcff%FUntitled.png?table=block&id=d-a--bc-fbcb&cache=v)

\. Click on New authorization (  ) and select Access Token (  );

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffbcd---f-cefcacb%FUntitled.png?table=block&id=d-a-a-ecc-decdddb&cache=v)

\. In the access\_token field enter the token received in item  of the instructions above.  of the instructions above. Press the Authorize button;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbec-ed-dac-aeb-bbcdb%FUntitled.png?table=block&id=d-a-f-bfa-ffec&cache=v)

\. View the presence of authorization in the node;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feab-af-e-b-eddb%FUntitled.png?table=block&id=d-a--b-ecabcf&cache=v)

\. Fill in the required fields of the node settings.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdb-f-add-abf-afbe%FUntitled.png?table=block&id=d-a-eb--dbd&cache=v)

You can view the result of the node execution when you run the scenario or by clicking on the node's Run Once button. You can also see the message sent to the specified Slack channel.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fabcee-bc-c-aed-cfe%FUntitled.png?table=block&id=d-a-ff-ac-cfafddab&cache=v)

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffc-bd---edec%FUntitled.png?table=block&id=d-a--f-ceeadfbfe&cache=v)