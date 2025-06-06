---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/using-operators-in-a-node/DTZDaghFHGDrdqVc"
title: "Using Operators in a Node – Latenode | Help Center"
---

 Using Operators in a Node

Implementing mathematical and logical operations.




[Link to the scenario template](https://app.latenode.com/shared-scenarios/dccbcfd)

As an example of setting up a node with operators, let's create a scenario that generates some values and then transforms these values using operators.

To set up this scenario, you need to add four nodes:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faaaf-bd-e-aa-dcfca%FUntitled.png?table=block&id=d-a-ab-ad-feabca&cache=v)

- (  ) Trigger on Run once: This node initiates the scenario when you click the Run Once button;

- (  ) JavaScript: This node generates the parameter ValueJS with the value `May` ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feecf--e-bf-bacf%FUntitled.png?table=block&id=d-a--cc-eecfa&cache=v)

```
export default async function run({execution_id, input, data, store}) {
    return {
        ValueJS: "May"
    };
}
```

- (  ) SetVariables: This node adds the variable ValueSV with the value `October` to the scenario ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffde-ec-ca-e-ebabbcd%FUntitled.png?table=block&id=d-a-c--eedfb&cache=v)

- (  ) Webhook Response: This node returns the value transformed using operators. In the Body field, add the expression `{{if(contains(.ValueSV, "ay") = false and matchesPattern($.ValueJS, "\\d"), $.ValueJS, .ValueSV)}}`.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fefe-fb-af-b-bfcb%FUntitled.png?table=block&id=d-a-b-b-cbaa&cache=v)

The result of the scenario is the value `October`, based on the conditions of the given expression:

_If "ay" is not in_ _ValueSV_ _and_ _ValueJS_ _matches any digit from  to , the response is_ _ValueJS_ _; otherwise, the response is_ _ValueSV_ _._