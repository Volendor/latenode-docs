---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/using-setvariables-node-and-the-add-operator/DTZDagiVGYGPhVSSLj"
title: "Using SetVariables node and the add operator – Latenode | Help Center"
---

 Using SetVariables node and the add operator

Managing stored values in automation.




[Link to the scenario template](https://app.latenode.com/shared-scenarios/afcdbefaad)

As an example of using the SetVariables node, let's create a scenario where the outcome will be a variable containing an array.

To make the scenario work successfully, you need to add  node:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feffb--ec-b-aeaffd%FUntitled.png?table=block&id=d-a--a-fafed&cache=v)

- (  ) A Trigger on Run once node to initiate a single scenario run immediately after clicking the Run Once button;

- (  ) An Iterator node , containing a sequence of values in the form of \[, , , , \];

- (  ) A SetVariables node that assembles a variable, which is an array ;

![Notion Image](https://www.notion.so/image/attachment%Aaabe-d-b-bd-dbceeba%Achrome_fEhLdZLPY.png?table=block&id=bfd-a-e-ade-eccc&cache=v)

When configuring the SetVariables node, it's important to correctly specify the variable assembly algorithm using the " add" operator:

- The operand of the expression will automatically be the specified variable.

- The value of the expression should be selected as the value of the Iterator node.



With each iteration, the value of the variable specified in the SetVariables node is new and equal to an element of the array.

- (  ) A Webhook Response node that returns the specified variable.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbafb-cbc-e-ad-ccffb%FUntitled.png?table=block&id=d-a--a-eacba&cache=v)

The outcome of the scenario will be an array of values:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdfdc-eda-e-bb-d%FUntitled.png?table=block&id=d-a-a-ba-cef&cache=v)