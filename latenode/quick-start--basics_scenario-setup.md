---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/scenario-setup/DTZDagfoJhZnnJHeS"
title: "Scenario Setup – Latenode | Help Center"
---

 Scenario Setup

Steps for setting up an automation scenario in Latenode.


 Saving a Scenario

After adding a scenario, it is recommended to rename the scenario (  ), add a description if necessary (  ), and save the changes by clicking the Save button (  ). Regular saving also helps in maintaining version control and tracking the progress of your scenario development.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdb-eab-b-dd-dbddca%FUntitled.png?table=block&id=d-a-a--fa&cache=v)

️

The Save button becomes active immediately after any changes are made to the scenario or its nodes. To avoid losing changes, remember to save your work regularly.

 Running a Scenario

 Run Once Scenario Execution



Before running your scenario, it needs to be configured. If your scenario is not yet configured and ready to run, you can familiarize yourself with the main setup steps in this section.

You can execute a scenario once by clicking the Run Once button. This is useful for testing and debugging your scenario to ensure it works as expected.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%F-ed---abbbb%FUntitled.png?table=block&id=d-a--bd-decffb&cache=v)

Depending on the trigger node:

- If the trigger node is an APP node, create an event in the external application to initiate the scenario.

- If the trigger node is Trigger on Webhook, send an HTTP request to the Trigger on Webhook node's address.

- If the trigger node is Trigger on Schedule or Trigger on Run once, no additional actions are needed.

After the scenario executes:

- Icons indicating successful execution or errors will appear in the upper right corner of the nodes. Clicking these icons provides detailed information.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbcc-ca-c--acaab%FUntitled.png?table=block&id=d-a-b-be-dfdb&cache=v)

- A new entry will appear in the execution history.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbae-de-b-bfc-fceb%FUntitled.png?table=block&id=d-a--e-cfeadc&cache=v)

- The Data tab in the configuration window will display data from previous nodes.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffff-ce-fe-b-cff%FUntitled.png?table=block&id=d-a--b-fea&cache=v)

- The Variables tab in the configuration window will display variable data if any were created in the scenario.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fa-ac-f-b-eeeda%FUntitled.png?table=block&id=d-a-cf-bd-eaefa&cache=v)

You can stop a one-time scenario execution by clicking the Stop button.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdef-c-bc-ffb-bbaae%FUntitled.png?table=block&id=d-a-c-a-eaffd&cache=v)

 Automatic Scenario Execution and Activation

To enable automatic execution of a scenario, you need to activate it. At the bottom of the scenario page, there is an Active toggle switch. When the scenario is active, it will automatically execute in response to the configured triggers, such as webhooks, schedules, or application events. Activating the scenario ensures it runs continuously without manual intervention, allowing for seamless automation of your tasks.

At the bottom of the scenario page, there is an Active toggle switch to set the scenario's activity status.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fafbb--a--afed%FUntitled.png?table=block&id=d-a-d-f-cdadf&cache=v)

️

Notifications about the execution results of the scenario nodes are only displayed when the scenario is manually started.

 Deployment and Scenario Branches

For configuring the scenario, there are two branches:

- Development \- the branch for testing the scenario's configuration and data processing results;

- Production \- the branch for storing the working version of the scenario.

The Development-branch and the Production-branch of the scenario can be edited and executed independently of each other. This allows for meeting the business process requirements by using the Production-branch of the scenario while simultaneously making enhancements to the Development-branch.

To create a new Development-branch of the scenario and transfer it to the Production-branch, follow these steps:

\. Save the current version of the scenario by clicking on the Save button;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbfaee-f-e--cda%FUntitled.png?table=block&id=d-a-b-e-fadaca&cache=v)

\. Check the availability of the next Development-branch in the list of versions;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdec---c-fdef%FUntitled.png?table=block&id=d-a-e-f-dfc&cache=v)

\. Click the Deploy button ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fecced-cbb-b-aec-bebeddf%FUntitled.png?table=block&id=d-a-e-aba-faadcad&cache=v)

\. Check the availability of the Production-branch in the list of versions.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feaeff-c-cf--aadadbb%FUntitled.png?table=block&id=d-a--d-ddfdf&cache=v)



The label "Selected" indicates the current scenario version. The label "Production" indicates the Production-branch scenario.

If necessary, you can "roll back" the Production-branch of the scenario. To do this, follow these steps:

\. Select any previous version of the scenario:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faa-dd-e-ec-efeecd%FUntitled.png?table=block&id=d-a-f-abe-ceccafbd&cache=v)

\. Press the Deploy button to publish the previous version of the scenario to the Production-branch:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffddd-ba-a-af-bdeda%FUntitled.png?table=block&id=d-a--bbb-cddbded&cache=v)

\. View the “Selected” and “Production” labels for the previous version of the scenario.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feaec-f-a-c-ebddd%FUntitled.png?table=block&id=d-a-b-fe-decec&cache=v)

 Triggers and Scenario Branches

Each scenario has a trigger node that initiates the scenario. It is important to understand how trigger nodes work depending on whether the scenario is deployed.

 Trigger on Webhook

The Trigger on Webhook node initiates the scenario when an HTTP request is sent to one of the node's URL versions ( Production (  ) or Development (  )).

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbae-df-be-e-eca%FUntitled.png?table=block&id=d-a--bca-ddde&cache=v)

- The Production-branch of the scenario is triggered by a request sent to the Production-version URL of the Trigger on Webhook node. To ensure the request is sent successfully, you need to deploy the scenario (  ) and make sure the scenario is active (  ).

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcccad-ff-e--febaebad%FUntitled.png?table=block&id=d-a-f-be-caef&cache=v)

- The Development-branch of the scenario is triggered by a request sent to the Development-version URL of the Trigger on Webhook node. To ensure that a submitted request is accepted by the scenario and successfully processed, you need to:

(  ) Either run the scenario beforehand by clicking the Run once button;

(  ) Or activate the scenario using the Active toggle switch.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Febec-d-da-c-ffbde%FUntitled.png?table=block&id=d-a-a-f-ef&cache=v)

 Trigger on Schedule

The Trigger on Schedule node initiates the Production-branch of the scenario according to the schedule configured in the node, as long as the scenario is active.

The Development-branch of the scenario does not run according to the Trigger on Schedule node's schedule, but you can still manually initiate the scenario by clicking the Run once button.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdb-cb--d-ffca%FUntitled.png?table=block&id=d-a--b-febaaa&cache=v)

 Trigger on Run once

The Trigger on Run once node initiates the Development-branch of the scenario when you click the Run once button. The Production-branch of the scenario does not start when you click the Run once button.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fccfb---fce-eebde%FUntitled.png?table=block&id=d-a-f-bbc-df&cache=v)



It is permissible to have multiple trigger nodes in one scenario. For example, use Trigger on Run once for testing the functionality of all other nodes during configuration and Trigger on Webhook for testing the entire scenario with incoming external data.

 APPs Triggers

Application trigger nodes initiate the scenario differently depending on the scenario branch:

- The Production-branch of the scenario is triggered by the application trigger node at regular intervals based on the subscription plan, provided that the initiating event in the application has occurred.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fac-e--aee-aafdfa%FUntitled.png?table=block&id=d-a---fdbaef&cache=v)



In the Starter plan, trigger nodes run every  minutes. In the Grow plan, they run every  minutes. In the Prime plan, they run every  minutes.

️

Nodes with "Instant" in their name are exceptions. They are triggered immediately after the initiating event occurs in the external application.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffccc-bc--bd-adddc%FUntitled.png?table=block&id=d-a-dd-b-ebaaad&cache=v)

- The Development-branch of the scenario is not triggered by the application trigger node, but you can still run the scenario once by clicking the Run once button. After this single run, the scenario will execute if the initiating event occurs in the application.

 Other Settings

 Aligning Nodes

At the bottom of the scenario page, there is an Align Nodes button to horizontally align the scenario chain if the nodes are connected by routes.

️

If the scenario nodes are not connected, the unconnected nodes will be aligned vertically.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdd-bc--abe-bcadda%FUntitled.png?table=block&id=d-a-d-bc-fdaeaa&cache=v)

 Adding Stickers

At the bottom of the scenario page, there is an Add Sticker button to add stickers. Stickers are not required for any functions but can be used for comments or storing necessary information about the scenario. After adding a sticker, you can enter text, format it, and add links and code snippets.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffcc-e-bba--ebaff%FUntitled.png?table=block&id=d-a--b-ebdcaafaa&cache=v)

You can resize a sticker by dragging (  ) its edges. Right-clicking on a sticker allows you to:

- Copy (  ) the sticker to duplicate it in the current or another scenario.

- Delete (  ) the sticker.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbb-a-d-cc-ac%FUntitled.png?table=block&id=d-a-b--dfb&cache=v)