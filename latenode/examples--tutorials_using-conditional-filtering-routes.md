---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/using-conditional-filtering-routes/DTZDaggWVoXVQiEZtak"
title: "Using conditional filtering routes – Latenode | Help Center"
---

 Using conditional filtering routes

Applying conditions to filter and direct data.




[Link to the scenario template](https://app.latenode.com/shared-scenarios/dcbcfdf)

As an example, let's create a scenario that generates a random number between  and . The scenario will result in one of two messages:

- _"The value is greater than "_ \- if the generated number is greater than .

- _"The value is less than or equal to "_ \- if the generated number is  or less.

To set up this scenario, you need to add four nodes and two routes with filtering conditions:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faaab-c-aa-ba-badfdba%FUntitled.png?table=block&id=d-a-d-bf-eaf&cache=v)

- (  ) Trigger on Run once: This node initiates the scenario when you click the Run Once button;

- (  ) JavaScript: This node contains code to generate a random number between  and ;

```
export default async function run({execution_id, input, data, store}) {
    const randomNumber = Math.floor(Math.random()  ) + ;

    return {
        randomNumber
    }
}
```

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdb-b-ba-bd-efb%FUntitled.png?table=block&id=d-a--b-cbffd&cache=v)

- (  ) Webhook Response "Greater than ": This node returns the message _"The value is greater than "_;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fed-fb---fcfeaaf%FUntitled.png?table=block&id=d-a--bdc-fededcae&cache=v)

- (  ) Route between JavaScript and Webhook Response "Greater than ": This route has a filtering condition set to `{{$.randomNumber > }}`;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffc--ec-bb-ddafbcbfff%FUntitled.png?table=block&id=d-a--bd-fffb&cache=v)

- (  ) Webhook Response "Less than ": This node returns the message _"The value is less than or equal to "_;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdf--e-b-eebebba%FUntitled.png?table=block&id=d-a-f--eaeedaa&cache=v)

- (  ) Route between JavaScript and Webhook Response "Less than ": This route has a filtering condition set to `{{$.randomNumber <= }}`;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fccb-d-b-c-fabd%FUntitled.png?table=block&id=d-a-de--ecdad&cache=v)

The result of the scenario is the appropriate message based on the generated value:

- If the generated number is  or less, the scenario follows the route "Less than or equal to ", and the Webhook Response "Less than " node sends the response.

- If the generated number is greater than , the scenario follows the route "Greater than ", and the Webhook Response "Greater than " node sends the response.