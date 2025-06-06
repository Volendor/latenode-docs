---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/using-a-wait-node/DTZDaghjiTZHjzYTqBc"
title: "Using a Wait node – Latenode | Help Center"
---

 Using a Wait node

Delaying scenario execution between actions.


As an example of using the Wait node, let's create a scenario that would result in the creation of a global variable some time after the scenario is run.



[Link to the scenario template](https://app.latenode.com/shared-scenarios/edafdebdf)

Three nodes must be added for the scenario to work successfully:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fafaf-bc-dd-ba-cabbf%FUntitled.png?table=block&id=d-a-d-ec-cdebc&cache=v)

- (  ) Trigger on Run once node to run the scenario after clicking the Run once button;

- (  ) Wait node to configure a  second pause when the scenario runs;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%F-d-c-f-ccdbe%FUntitled.png?table=block&id=d-a--bde-ccac&cache=v)

- (  ) SetGlobalVariables node to create a global variable `TestWaitNode` as the outcome of the scenario execution. The created global variable is available for viewing on the Global Variables page.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcdb--e-b-acadff%FUntitled.png?table=block&id=d-a-f-acb-eeeae&cache=v)

The result of the scenario execution is a global variable created one minute after the scenario was run.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcfcbdc-e-d-bfa-dacee%FUntitled.png?table=block&id=d-a-d-d-eeff&cache=v)