---
url: "https://help.latenode.com/advanced-features/DTZDaggyNRLGe/how-to-create-your-own-nodes/ctpLAfvipBHWwZVBW"
title: "How to create your own nodes – Latenode | Help Center"
---

 How to create your own nodes

Step-by-step guide for building custom Latenode nodes.


Scenario type “ Nodul” is often used for quickly integrating into another scenario that involves preconfigured and repetitive actions.

Often a scenario of type Nodul is used to quickly embed an already customized and repetitive action into another, main scenario. The generated scenario of type Nodul is selectable in the list of all nodes and visually represents a customized node.

When executing Production-branch of the scenario that uses a scenario of type Nodul, the status of the scenario of type Nodul is important:

- If the status of the Nodul type scenario is Pause and the Trigger on Webhook node is the trigger for the main scenario, an error will occur during scenario execution indicating that the Nodul type scenario needs to be activated.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faca--f-be-bdeb%FUntitled.png?table=block&id=ed-a--e-ccca&cache=v)

- If the status of the scenario is of the Nodul Pause type and the Trigger on RunOnce node is the trigger for the main scenario, no error will occur and the scenario will be executed.

- If the status of the scenario is of type Nodul Active, then no error will occur at any trigger of the main scenario and the scenario will be executed.

If the Development-branch of the scenario is running, no error will occur and the scenario will be executed.

Let's consider the algorithm for creating a Nodul scenario with an example.

We will create a scenario that records a string in a Google Sheet. Recording a string of text in a Google Sheet will be considered the repetitive action. Retrieving data from a source and transforming it, if necessary, will be considered the specific action.

To achieve this, you need to:

\. Create a Scenario of type Scenario with the preliminary name "String to Table," the result of which is a frequently repeated action, i.e., entering information into a Google Sheet:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faffe-db-dd-acd-b%FUntitled.png?table=block&id=ed-a--f-ca&cache=v)

- Add a Trigger on Webhook node to trigger the scenario;

- Add an Add Single Row node to write a row to the Google Sheet according to your settings ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fffd-f-faf-aad-bbeeaad%FUntitled.png?table=block&id=ed-a---fdcfc&cache=v)

- Add a Webhook Response node to return a response upon scenario execution ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feb-fe-f-a-fbaedbc%FUntitled.png?table=block&id=ed-a--ab-debe&cache=v)

- Save and activate the scenario;

\. In the "String to Table" scenario, replace the Trigger on Webhook node with a NodulInput node and replace the Webhook Response node with a NodulOutput node;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdcfe-b-edd-ae-cceabd%FQuickLook_llgjlaktLc.png?table=block&id=ed-a-a-b-dfabaeff&cache=v)



You can add XML code for the icon in the "Icon (svg)" field to make the scenario easier to identify.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%F--e-aa-afe%FUntitled.png?table=block&id=ed-a--ac-eecab&cache=v)

\. Change the current scenario name "String to Table" to "Al Tools/Actions/GoogleSheetAddRow";

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fed-bd-a-aea-aac%Fbrave_LKGkcfKOuy.png?table=block&id=ed-a-e-b-ecea&cache=v)



The "Al Tools/Actions" part of the name is necessary for storing the scenario as an Action node in the Al Tools folder.

\. Change the scenario type to Nodul;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fde-bd--e-eaafee%FUntitled.png?table=block&id=ed-a---fbb&cache=v)



Next to the scenario name, after changing the type, icons are used to denote "Nodul" (a sign of a Nodul type scenario) and "Private" (indicating no public access to the scenario).

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fec-ef-ca-bb-bcbe%Fbrave_LKGkcfKOuy.png?table=block&id=ed-a--e-fcecc&cache=v)

.Add a parameter to the NodulInput node, for example, User\- a text string. You can add parameters using the "Add Parameter" button.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcd-df-ee-bb-edefdb%FUntitled.png?table=block&id=ed-a--aead-ffbabef&cache=v)

 . Adjust the settings of the Add Single Row node so that the text added to the table row is equal to the value of the User parameter in the NodulInput node.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fd-e-f-caa-f%FUntitled.png?table=block&id=ed-a-a-bde-fcbe&cache=v)

 . Add the execution result of the "Ok" scenario to the Result field of the NodulOutput node ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fe-dfd--a-bd%FQuickLook_OfZdSdBUW.png?table=block&id=ed-a-f-e-ffa&cache=v)

\. Create a scenario of type Scenario with the name "Get and Write Users," where the result of execution involves retrieving user data, transforming it, and writing the username to a Google Sheet.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fde-ef-b--afbcbdd%FUntitled.png?table=block&id=ed-a-f-dad-deabfece&cache=v)

- Add a Trigger on Webhook node to trigger the "Get and Write Users" scenario and pass JSON with user data into it:

```
{
	"Surname": "John",
	"Name": "Doe",
	"Email": "a@gmail.com"
}
```

- Add a JavaScript node to create the full user name based on the data received in the Webhook using code:

```
export default async function run({execution_id, input, data}) {

const SurName = data["{{.body.Surname}}"];
const Name = data["{{.body.Name}}"];
const FullName = Name +' '+ SurName;

    return {
      FullName
    }
}
```

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcda-e-c-aaa-edba%FUntitled.png?table=block&id=ed-a--bfc-fde&cache=v)

- Add a GoogleSheetAddRow node ( Nodul type scenario) to write the full user name obtained in the JavaScript node into a Google Sheet;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faf--f-aa-acfdfda%FUntitled.png?table=block&id=ed-a-a-bfd-ccad&cache=v)

- Add a Webhook response node to receive a response from the GoogleSheetAddRow node indicating successful execution.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%F--d-f-dcbec%FUntitled.png?table=block&id=ed-a-f-bc-fcccdfc&cache=v)

\. Save and activate the scenario.

The result of the scenario is the recording of a row in a Google Sheet and a successful row recording response.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffffd-abb--a-cabe%FUntitled.png?table=block&id=ed-a-ce-a-ccafdf&cache=v)

In the future, if user information comes from new sources or requires different processing, the GoogleSheetAddRow node can be reused without reconfiguring the logic for recording rows in Google Sheets.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fec-afe-a--beeda%FUntitled.png?table=block&id=ed-a--ba-deefba&cache=v)