---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/setvariables/kEYxeVVrnrRREzk"
title: "SetVariables – Latenode | Help Center"
---

 SetVariables

Storing and retrieving variables within a scenario.


![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Ffaf--cbc-a-aabed%FUntitled.png?table=block&id=d-a--da-ccdc&cache=v)

 Node Description

SetVariables \- an action-type node used to introduce a new variable into the script. The added variable can be subsequently used within the script.

See Example scenario using SetVariables and the add operator



The added variable is unique within the script and can be changed during the execution of script nodes. If two SetVariables nodes are placed in sequence and both define the value of the same variable, the final value for the variable will be set by the last SetVariables node.

 Node Configuration

To configure the SetVariables node, you need to fill in pairs of Key-Value fields.

- (  ) Key \- the field for entering the variable name;

- (  ) Value \- the field for entering the variable's value.

![Notion Image](https://www.notion.so/image/attachment%Aeba-eb-cb-b-bed%Achrome_fMOSSVjL.png?table=block&id=bfd-a-a-bfb-eceaea&cache=v)

If a SetVariables node is connected to an Iterator node and is executed multiple times sequentially, the node's output is displayed with an indication of Iterations. Each iteration corresponds to its own output data.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcb-b-c-baba-ffaee%FUntitled.png?table=block&id=d-a-d-ce-fefc&cache=v)