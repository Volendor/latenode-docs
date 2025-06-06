---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/using-global-variables/DTZDaghSGPcffmAwZ"
title: "Using global variables – Latenode | Help Center"
---

 Using global variables

Storing and reusing values across multiple workflows.


As an example of working with global variables, let's create a scenario, the result of which would be to create a global variable and get a list of all global variables, including the created one.



[Link to the scenario template](https://app.latenode.com/shared-scenarios/eafdebd)

Three nodes must be added for the scenario to work successfully:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffe-fe-bf--aba%FUntitled.png?table=block&id=d-a-e-a-dbeca&cache=v)

- (  ) Trigger on Run once node to run the scenario after clicking on the Run once button;

- (  ) SetGlobalVariables node to create a global variable `TestGlVar`;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feffb-ecc--e-afbeee%FUntitled.png?table=block&id=d-a-a-baa-ffedfa&cache=v)

- (  ) Node JavaScript with code, to get a list of all existing global variables.

```
export default async function run({ execution_id, input, data, store }) {
 // List Global vars directly from JS

const List = await store.listGlobalVariables()

 return {
List
 }
}
```



You can see other examples of using the JavaScript node to work with global variables here.

The result of the scenario execution is the retrieval of all global variables, including the created one.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feeeac-eeb--c-eedc%FUntitled.png?table=block&id=d-a-a-aa-dac&cache=v)

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffa-d--ed-cafff%FUntitled.png?table=block&id=d-a-a-aac-edeb&cache=v)