---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/getglobalvariables/kEYxeVVfSSKcRLqyh"
title: "GetGlobalVariables – Latenode | Help Center"
---

 GetGlobalVariables

Managing persistent global variables across workflows.


![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fa-c-a-bfd-fafcece%FUntitled.png?table=block&id=d-a-f-df-edc&cache=v)

 Node Description

GetGlobalVariables \- an action-type node, necessary for obtaining and further using a global variable set in the SetGlobalVariables node.

For more information about global variables, see Global Variables.

 Node Configuration

To configure the GetGlobalVariables node, it is necessary to fill in the Variables (  ) field with the corresponding parameter name from the previous SetGlobalVariables (  ) node or from the list of already created global variables (displayed on the Variables tab (  )).

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fab-f--de-ccaa%FUntitled.png?table=block&id=d-a--ca-cdffcff&cache=v)

️

If the global variable is being created for the first time in the scenario, a specific sequence of scenario nodes should be observed when using nodes for variable input and retrieval. The SetGlobalVariables node must be executed before the GetGlobalVariables node.