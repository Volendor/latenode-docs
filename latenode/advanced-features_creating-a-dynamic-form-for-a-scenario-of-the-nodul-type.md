---
url: "https://help.latenode.com/advanced-features/DTZDaggyNRLGe/creating-a-dynamic-form-for-a-scenario-of-the-nodul-type/DTZDaggdKYPXCcSbP"
title: "Creating a dynamic form for a scenario of the Nodul type – Latenode | Help Center"
---

 Creating a dynamic form for a scenario of the Nodul type

Developing dynamic forms for custom automation workflows.


To meet business needs, it may be necessary to dynamically display fields in a scenario node of the Nodul type.

Let's create a custom node with dynamic field rendering. To do this, you need to create auxiliary scenarios with nodes such as NodulInput, NodulOutput, Nodul Form Input, Nodul Form Output, and then verify the operation of the created node.

 Creating Auxiliary Scenarios

\. Create a scenario of type Nodul:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%F-bcc-d--edf%FQuickLook_wFXcMuwb.png?table=block&id=d-a-b-aba-efc&cache=v)

- Add a NodulInput node with configured parameters:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ff-ef-be-e-debd%FQuickLook_ieAHifWbH.png?table=block&id=d-a-dd--efb&cache=v)

URL\- a mandatory parameter of type String;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcdc-a-aad-bad-afbb%FUntitled.png?table=block&id=d-a-f--cefbdcd&cache=v)

Method\- a mandatory parameter of type Select with the option for a single choice and a list of values to choose from: GET, POST, PUT, DELETE. You can choose GET as the default value;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdadb-abfa-d--ccb%FUntitled.png?table=block&id=d-a-e-ccd-ebb&cache=v)

Body type \- an optional parameter of type Select with the option for a single choice and a list of values to choose from: Raw, form-data, x-www-form-urlencoded. Fill in the Fetch events characteristic with the value Change to trigger the update of the entire node form when selecting a parameter value.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbade---df-bcdb%FUntitled.png?table=block&id=d-a-df--dfdc&cache=v)

- Add a node to perform the scenario function, for example, an Java Script node to send requests to an external application.

- Add a NodulOutput node to receive the response from the Nodul type scenario.

\. Save and activate the scenario of type Nodul;

\. On the same page, create a scenario using the Nodul Form Input and Nodul Form Output nodes. This scenario will ensure dynamic display of a Nodul type scenario form based on the selected parameters:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbe--f-af-bdb%FQuickLook_lMHjGBuLG.png?table=block&id=d-a--bde-efddaee&cache=v)

- Add a Nodul Form Input node to retrieve parameters from the Nodul type scenario form;

- Add a JavaScript node with the following code:

```
export default async function run({execution_id, input, data}) {
    const current_form_values = data["{{.`current_form_values`}}"];
    console.log(current_form_values);
    const formValuesRaw = JSON.parse(current_form_values);
    const formValues = formValuesRaw.reduce((acc, item) => {
        acc[item.key] = item.type === 'select' ? {
            ...item,
            value: {
                select: item.value.select[],
            }
        } : item;
        return acc;
    }, {});
    const changedKeys = JSON.parse(data["{{.event.`param_keys`}}"]).reduce((acc, item) => {
        acc[item] = true;
        return acc;
    }, {});

    return {
        formValues,
        changedKeys,
    }
}
```

- Create a connection with the condition `{{.changedKeys.bodytype = true and .formValues.bodytype.value.select = "raw"}}` to trigger the corresponding branch of the scenario when the "Raw" value is selected in the Body type parameter;

- Add another JavaScript node with the following code:

```
export default async function run({execution_id, input, data}) {
    return {
        data: {
            params: {
                set: [{\
                    key: 'body',\
                    type: 'text',\
                    title: 'Row',\
                    required: true,\
\
                }]
            }
        }
    }
}
```

- Add a Nodul Form Output node to display form parameters after selecting "Raw" in the Body type parameter ;

- Create a connection with the condition `{{.changedKeys.bodytype = true and (.formValues.bodytype.value.select = "form-data" or .formValues.bodytype.value.select = "x-www-form-urlencoded")}}` to trigger the corresponding branch of the scenario when "form-data" or "x-www-form-urlencoded" values are selected in the Body type parameter;

- Add another JavaScript node with the following code:

```
export default async function run({execution_id, input, data}) {
    return {
        data: {
            params: {
                set: [{\
                    key: 'body',\
                    type: 'string_to_string',\
                    title: data["{{.`formValues`.bodytype.value.select}}"],\
                }]
            }
        }
    }
}
```

- Add a Nodul Form Output node to display form parameters after selecting "Raw" in the Body type parameter .

 The result of auxiliary scenarios

To check the result of the created scenarios, you need to:

\. Create a new scenario;

\. Add the created node using the Add Node button. The node will be placed in the node group according to the scenario name, under the Nodul type.

For example, if the scenario name is Al Tools/Action/Nodul then the node will be placed in the Al Tools group, under the Action subgroup, and named Nodul.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbec--af-da-cae%FUntitled.png?table=block&id=d-a---cbfacf&cache=v)

\. The added node will display fields corresponding to the parameters of the NodulInput node :

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdda--e-a-deafa%FUntitled.png?table=block&id=d-a-d-bff-ddecfec&cache=v)

- When selecting the "Raw" parameter in the Body type field, the node's form will be updated, and a mandatory Row field will be added to the existing fields ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fc-e-d--abcffbd%FUntitled.png?table=block&id=d-a-e-aac-cfffaab&cache=v)

- When selecting the "form-data" or "x-www-form-urlencoded" parameter in the Body type field, the node's form will be updated, and pairs of Key-Value fields will be added to the existing fields.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcdd-da---dfabd%FUntitled.png?table=block&id=d-a-b-f-cdae&cache=v)

\. Each time the node is updated, an auxiliary scenario is triggered. The history and results of the execution are displayed in the History section on the scenario page.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fc-bfaa-ba-dc-bcbfef%FUntitled.png?table=block&id=d-a--d-caca&cache=v)