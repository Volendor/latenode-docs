---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/helper-widget-/DTZDagfXjJzEKJpNFa"
title: "Helper Widget  – Latenode | Help Center"
---

 Helper Widget

Guide to using the Helper Widget for improved navigation and workflow efficiency.


To configure each node, you need to fill in its fields. The fields in scenario nodes can be populated with:

- Variables created within the scenario

- Global variables

- Output parameters from other nodes in the scenario

You can manually or automatically fill these node fields.

 Variables

Existing variables are displayed in a helper window for filling in node or route fields. To make a variable appear in the helper window, it must first be created:

- To create a "regular" variable for use in the scenario, add a SetVariables node and run it.

- To create a global variable, add a SetGlobalVariables node (in the current or any other scenario) and run it. Another way to create global variables is to add them via a separate interface.

 Automatic Filling

To automatically fill a field with a variable:

- (  ) Click on the node or route configuration field.

- (  ) View the available parameters from previous nodes in the Variables window. The Variables tab displays both regular variables (added to the scenario using the SetVariables node) and global variables (added to the account using the SetGlobalVariables node or manually).

- (  ) Select the necessary regular or global variables.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffd-bde-bea-aac-ebba%FUntitled.png?table=block&id=d-a--dc-cbaaba&cache=v)

 Manual Filling

To manually fill a node field with variable values, write the variable name in curly braces in the specified format:

- For regular variables, use the format - `{{_.VariableName}}`.

_Example:_ Variable "SetVar" - `{{_.SetVar}}`

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcced-bdfa-f-ad-af%FUntitled.png?table=block&id=d-a---ecfdcb&cache=v)

- For global variables, use the format - `{{%.VariableName}}`.

_Example:_ Variable "dayTemp" - `{{%.dayTemp}}` .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffeadd-e-d-d-adfbe%FUntitled.png?table=block&id=d-a-d-bb-eddac&cache=v)

 Node Data

The output of previous nodes is displayed in a helper window for filling in node or route fields.

 Automatic Filling

To automatically input a parameter:

- (  ) Click on the node or route configuration field.

- (  ) View the available parameters from previous nodes in the Data window.

- (  ) Select the necessary parameters or entire nodes.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcafa-ee--c-dabcca%FUntitled.png?table=block&id=d-a--dd-dacfb&cache=v)

 Manual Filling

To manually fill a field with existing data, write the parameter name in curly braces in the specified format:

- All data from a node in the format - `{{$NodeNumber}}`.

_Example:_ Node  - `{{$}}`

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fced-cb-cf-aed-bfeb%FUntitled.png?table=block&id=d-a-c--facf&cache=v)

- Specific parameter in the format - `{{$NodeNumber.ParameterPath.ParameterName}}`.

_Example:_ Parameter “name” in node  - `{{$.name}}`

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ff-bf-e-e-bbefb%FUntitled.png?table=block&id=d-a--d-cffdfe&cache=v)

 JavaScript and Headless Browser

In both the JavaScript and Headless Browser nodes, you can select parameters from previous nodes or variables. For example, to easily create a constant in the JavaScript node:

- Write the expression to add the constant, such as `const =`.

- Select the necessary parameter from previous nodes.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fecffeb--d-bc-cafafe%FUntitled.png?table=block&id=d-a-c-acc-eec&cache=v)

️

When adding data from other nodes, part of the expression might be wrapped in backticks, like this: `data["{{.headers.Content-Type}}"]`, even though another node returned the property without them. You do not need to remove the backticks, as they will be ignored during code processing. Manually removing them may cause the code to fail.

 Arrays

Sometimes, the output parameters of a node may be arrays containing a set of elements. You can use the desired array element or the entire array in other nodes.

 Auto-Filling

For example, let's create a scenario where the trigger node activates when a new row is added to a Google Sheet and provides an array of cell values from the new row as output parameters. We'll specify the entire array and individual elements as variables. To create this scenario, add two nodes:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdaebbef-e-a--dcbd%FUntitled.png?table=block&id=d-a--a-eb&cache=v)

- (  ) New Row Added (Shared Drive, Instant) \- to trigger the scenario and provide data about the added row. Authorization and selection of the required table and sheet are necessary for this node.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fabea-f-c-bbd-afdd%FUntitled.png?table=block&id=d-a-a-bc-ccccd&cache=v)

- (  ) SetVariables \- to record variables Val, Val, and Val.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffdbf---ab-bdc%FUntitled.png?table=block&id=d-a-c-bc-dcdedb&cache=v)

Run the scenario once by clicking the Run Once button and add a row to the specified table. The output of the New Row Added (Shared Drive, Instant) node will include an array of cell values from the added row:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffa-fcc-f-bd-aeecbd%Fcc-e-b-bf-bbdccb.png?table=block&id=d-a--bf-fcff&cache=v)

Set the variable values:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffdd-ff-a-bdf-aa%FUntitled.png?table=block&id=d-a-e-cf-edfddab&cache=v)

- Val - the entire array of values `{{$.data.newRow}}`. Click on `newRow[ ]`.

- Val - the first element of the array `{{$.data.newRow.[`  `]}}`. Click on `[]`.

- Val - the second element of the array `{{$.data.newRow.[`  `]}}`. Click on `[]` and manually replace  with .

Run the SetVariables node once and check the recorded variable values. You can then use each of these variables to fill in the fields of other nodes in the Helper Widget.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fddaef-fa--adb-ed%FUntitled.png?table=block&id=d-a-a-bad-fadfaddb&cache=v)

 Using the “Select/Map” toggle in the settings

Some parameters, such as a dropdown list or toggle, by default do not have an input field that allows passing data to the parameter from variables or previous nodes.

For such parameters, there is a special toggle:

When the toggle is set to "Select," the parameter operates in manual mode. In the case of a dropdown list, the item is selected manually and saved in the node settings.

For example, in Google Calendar, you can select rules for sending notifications about a new event:

In cases where notification sending needs to be managed dynamically, the toggle must be set to "Map" mode, and data from other nodes can be used:

  

In cases where notification sending needs to be managed dynamically, the toggle must be set to “Map”, and data from other nodes can be used:

This allows the value to change on each run based on scenario input — unlike “Select”, which always uses a fixed value chosen manually.

  

 Using the “Select / Map” Toggle in the Settings

Some parameters, such as a dropdown list or toggle, by default do not have an input field that allows passing data from variables or previous nodes.

For such parameters, there is a special toggle:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feada---bbe-ebfbbb%Fimage.png?table=block&id=cad-a--c-eccf&cache=v)

When the toggle is set to “Select”, the parameter operates in manual (static) mode. In the case of a dropdown list, the item is selected manually and saved in the node settings.

For example, in Google Calendar, you can select rules for sending notifications about a new event:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faf-c-b-b-ea%Fimage.png?table=block&id=cad-a--a-ed&cache=v)

This value will always stay the same unless changed manually. It cannot be influenced by other nodes or incoming data.

> Use Select when the value should always remain fixed during scenario execution.

  

In cases where the value needs to be set dynamically, switch the toggle to “Map” mode. This allows passing data from previous nodes:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcaecfc-c-d-dc-daecff%Fimage.png?table=block&id=cad-a-de-df-cafeee&cache=v)

```
$.query.send_updates_notification_rule
```

The value will now update automatically on each run, based on scenario input — for example, from a webhook, user form, or database.

> Use Map when the value should react to dynamic input from other nodes.

  

 Why Map Mode Is More Powerful

Unlike Select, which is limited to predefined values, Map mode enables:

-  Boolean values like `true` / `false`

Useful for dynamic toggles, e.g., enabling/disabling a setting.

-  Dynamic formatting using [Operators](https://docs.latenode.com/docs/operators)

You can manipulate or compute values using expressions and logic.

Example:

```
{{ if(.is_active = true; "Active"; "Inactive") }}
```

 Explanation:

- `.is_active` — a variable from node , for example a boolean flag

- `= true` — condition that checks if the flag is active

- Returns `"Active"` if true, `"Inactive"` otherwise

> ️ This logic is only available in Map mode.

  