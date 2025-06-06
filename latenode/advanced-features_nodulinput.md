---
url: "https://help.latenode.com/advanced-features/DTZDaggyNRLGe/nodulinput/DTZDagfuhxsDmwbN"
title: "NodulInput – Latenode | Help Center"
---

 NodulInput

Handling input parameters for custom nodes.


![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fcd-ee--aa-cdef%FUntitled.png?table=block&id=d-a-bb-cd-dedeadc&cache=v)

 Node Description

NodulInput\- a node of the action type, necessary for creating a scenario of the Nodul type. This node serves as an entry point into the Nodul type scenario and defines the form of the scenario node, i.e., its parameters.



See Utilizing the NodulInput node to create a scenario of the Nodul type

 Node Configuration

To configure the NodulInput node, it is necessary to fill in optional fields, including the creation of node parameters.

 Parameter Constructor

Adding parameters to the node is available by clicking the Add parameter button.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fab--e-bc-becd%FUntitled.png?table=block&id=d-a--add-eecadaf&cache=v)

When adding a parameter, it is necessary to specify the Parameter type (e.g., string) and the Parameter key (e.g., Value) and then click the Add button.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdcc---b-cffdecb%FUntitled.png?table=block&id=d-a-d-b-dabfc&cache=v)

After adding the parameter, it is necessary to define its Name in the respective field and, if needed, fill in optional parameters:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdbdd-bbb-c-a-fbacfcf%FUntitled.png?table=block&id=d-a-e-af-fdfb&cache=v)

- Determine the requirement attribute by checking the Required (  ) checkbox;

- Add a description of the parameter in the Description (  ) field for subsequent tooltip display;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fe-bd-d-f-eaa%FUntitled.png?table=block&id=d-a-f-e-ddceccdc&cache=v)

- Add a value in the Default Value field to display it in the parameter field when the node is initially opened.

 Parameter Constructor. Options

In the Options section, you can define additional characteristics of the parameter:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feabf-d-b--cfcdcb%FUntitled.png?table=block&id=d-a--a-fafafc&cache=v)

- Min length \- the minimum allowable number of characters in the parameter's value. If the character count is less than this, the parameter will be highlighted;

- Prefix;

- Fetch events \- the need to update the node's form when selecting a parameter value:

If Change is selected, the node's form will be updated every time the parameter is reselected.

If Init is selected, the node's form will be updated during the initial parameter input.

If both Change and Init are selected, the node's form will be updated every time the parameter is reselected and during the initial node opening.

 Personalization of Nodul

A scenario of the Nodul type, created using the NodulInput node, is displayed in the list of all nodes after pressing the add node buttons.

The icon of such a scenario can be personalized by filling in the fields of the NodulInput node:

- Color (HEX) (  )\- color representation in HEX format;

- Icon (svg) (  ) \- icon representation in svg format.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fae--ac-abd-ffb%FUntitled.png?table=block&id=d-a---cc&cache=v)