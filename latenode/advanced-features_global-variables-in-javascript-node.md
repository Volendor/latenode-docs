---
url: "https://help.latenode.com/advanced-features/DTZDaggyNRLGe/global-variables-in-javascript-node/DTZDagfFrxNxMDxHg"
title: "Global Variables in JavaScript Node – Latenode | Help Center"
---

 Global Variables in JavaScript Node

Using JavaScript to read, update, and manipulate global variables.


With the JavaScript node, it is possible to manage global variables.

 Сreate Global Variables

To _create_ a global variable using the JavaScript node, you need to:

\. Add a JavaScript node to the scenario with the following code:

```
export default async function run({ execution_id, input, data, store }) {
 // Set Global vars directly from JS
 // String, Obj and Number are available
 const gv_str = await store.setGlobalVariable("GlobalVarFromJs_string", "global var string value");
 const gv_obj = await store.setGlobalVariable("GlobalVarFromJs_obj", {"key":"global var object value"});
 const gv_num = await store.setGlobalVariable("GlobalVarFromJs_number", );

 return {
 }
}
```

This code represents an asynchronous function `run`. This function is intended for execution in a web automation scenario and uses objects  `execution_id`,  `input`,  `data`, and `store`.

The function defines global variables `GlobalVarFromJs_string`, `GlobalVarFromJs_obj`, `GlobalVarFromJs_number` and saves them using the `store.setGlobalVariable` method. These global variables can be used later in other nodes of the scenario.

\. Run the JavaScript node once and wait for its execution;

\. View the globally created variables `GlobalVarFromJs_string`, `GlobalVarFromJs_obj`, `GlobalVarFromJs_number` on the Global variables interface.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffd--bc-bd-ceee%FUntitled.png?table=block&id=d-a-e-a-ffdfed&cache=v)

\. Check for the presence of new global variables when filling in the parameters of any other node:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcaff-a--d-edfdafbbd%FUntitled.png?table=block&id=d-a---fbcdbb&cache=v)

 Getting Global Variables

To _get_ a global variable using a JavaScript node, you need to:

\. Add a JavaScript node to the scenario with the following code:

```
export default async function run({ execution_id, input, data, store }) {

 // Get Global Vars
 const res_gv_str = await store.getGlobalVariable("GlobalVarFromJs_string")
 const res_gv_obj = await store.getGlobalVariable("GlobalVarFromJs_obj")
 const res_gv_num = await store.getGlobalVariable("GlobalVarFromJs_number")

 return {
  res_gv_str, res_gv_obj, res_gv_num
 }
}
```

This code represents an asynchronous function `run`. This function is designed to be executed in a web automation scenario and utilizes objects  `execution_id`,  `input`,  `data`, and `store`. The code retrieves values of global variables using the  `store.getGlobalVariable` method. This method returns values of previously set global variables.

\. Run the JavaScript node once and wait for its execution to complete;

\. Check the output data of the JavaScript node for the values of global variables:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffcdfd-ee---d%FUntitled.png?table=block&id=d-a-b-bee-dab&cache=v)

 Removing Global Variables

Added global variables can be deleted.
To _delete_ a global variable using a JavaScript node, follow these steps:

\. Add a JavaScript node to the scenario with the following code:

```
export default async function run({ execution_id, input, data, store }) {
 // Del Global vars directly from JS

await store.deleteGlobalVariable("GlobalVarFromJs_string")
await store.deleteGlobalVariable("GlobalVarFromJs_obj")
await store.deleteGlobalVariable("GlobalVarFromJs_number")

 return {
 }
}
```

The code represents an asynchronous function `run` designed to be executed in a web automation scenario, utilizing the objects `execution_id`, `input`, `data`, and `store`. The function deletes existing global variables `GlobalVarFromJs_string`, `GlobalVarFromJs_obj`, `GlobalVarFromJs_number` using the `store.deleteGlobalVariable` method. Global variables are permanently deleted and cannot be used by other scenarios.

\. Run the JavaScript node once and wait for its execution;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbde-c--a-efaab%FUntitled.png?table=block&id=d-a-ee-ac-ecdfa&cache=v)

\. Check for the absence of global variables `GlobalVarFromJs_string`, `GlobalVarFromJs_obj`, `GlobalVarFromJs_number` on the Global Variables interface.

 Getting a list of global variables

To _get a list_ of global variables using a JavaScript node, follow these steps:

\. Add a JavaScript node to the scenario with the following code:

```
export default async function run({ execution_id, input, data, store }) {
 // List Global vars directly from JS

const List = await store.listGlobalVariables()

 return {
List
 }
}
```

The code represents an asynchronous function `run` designed to be executed in a web automation scenario, utilizing the objects `execution_id`, `input`, `data`, and `store`. The function allows obtaining a list of all existing global variables using the `store.listGlobalVariables` method.

\. Run the JavaScript node once and wait for its execution.

\. Examine the output data of the JavaScript node, which will contain an array of global variables. Attributes are provided for each global variable:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdc-f-da-bc-aecca%FUntitled.png?table=block&id=d-a--ae-caaac&cache=v)

- Name "key";

- Type "type";

- Editability indicator "editable";

- Creation date "created\_at";

- Last modification date "last\_modified\_at".