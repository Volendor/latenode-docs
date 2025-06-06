---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/setglobalvariables/kEYxeVVpDGpMZXkPN"
title: "SetGlobalVariables – Latenode | Help Center"
---

 SetGlobalVariables

Managing persistent global variables across workflows.


![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faaec-cd--a-facddc%FUntitled.png?table=block&id=d-a-d-a-ddbd&cache=v)

 Node Description

SetGlobalVariables - an action-type node necessary for introducing a new global variable into the scenario. The added variable can subsequently be used in any account scenario.



The added global variable can be modified during the execution of nodes. If two SetGlobalVariables nodes are placed consecutively and both define the value of the same variable, the final value for the variable will be set by the last SetGlobalVariables node .

For more information about global variables, see Global Variables.

 Node Configuration

To configure the SetGlobalVariables node, it is necessary to fill in key-value pairs.

- (  ) Key \- a field for entering the name of the global variable;

- (  ) Value \- a field for entering the value of the global variable.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbb-cb-eb-ab-ddeaede%FUntitled.png?table=block&id=d-a--bad-cfcfbaa&cache=v)

After creation using the SetGlobalVariables node, the global variable will be displayed in the table of all existing global variables.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fab---ca-dadec%FUntitled.png?table=block&id=d-a--c-cdeefeea&cache=v)

If the SetGlobalVariables node is connected to a node through the top Iterator connection point and is executed multiple times sequentially, the node's output data is displayed with an indication of Iterations. Each iteration corresponds to its output data.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fccc-dd-ba-ae-ebe%FUntitled.png?table=block&id=d-a--a-eade&cache=v)