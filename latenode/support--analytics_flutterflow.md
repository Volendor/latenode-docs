---
url: "https://help.latenode.com/support--analytics/DTZDagfcsSJdCyLcX/flutterflow/kEYxeVTiRwveJkLRNV"
title: "Flutterflow – Latenode | Help Center"
---

 Flutterflow

Enhancing Flutterflow projects with automation.


The Latenode platform facilitates interaction with apps created using the Flutterflow service through the Trigger on Webhook node.

Flutterflow provides intuitive tools for designing mobile app interfaces, enabling quick and efficient frontend development with minimal effort. Latenode can manage the backend logic.

Example Scenario: Generating Random Numbers for Display in Flutterflow



You can watch a training video here.

 Creating a Latenode Scenario

- Trigger on Webhook: Start the scenario with this node and save its URL for later use in Flutterflow.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fe-a-bc-db-eab%FUntitled.png?table=block&id=d-a-a-b-fdfdee&cache=v)

- JavaScript: Add a node with code to generate a random number.

```
export default async function run({execution_id, input, data, store}) {
    let randomNumber = Math.floor(Math.random()  );

    return {
        random_number: randomNumber
    }
}
```

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fadde-ffa-af-a-dbb%FUntitled.png?table=block&id=d-a-df-ae-cabc&cache=v)

- Webhook Response: Use this node to send the scenario's result to Flutterflow.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffedca-c---dbca%FUntitled.png?table=block&id=d-a-e-c-dcbc&cache=v)

 Building the Form in Flutterflow

Sign Up: Register on Flutterflow.

 Create Project

- Go to the Projects page and click Create new.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%F-fa-a-dd-bdedd%FUntitled.png?table=block&id=d-a-b-b-dbeee&cache=v)

- Name the new project and select Create Blank.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%F-ae-ce-ba-ddaefc%FUntitled.png?table=block&id=d-a-f-ecb-deee&cache=v)

 Interface Design

- In the Widget Tree () tab, view interface elements and update the text element () at the top.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbb--c-b-eabc%FUntitled.png?table=block&id=d-a-f-bedb-ebfea&cache=v)

- Add a TextField () to the Column () element.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feaaaa-af-ee-b-bddb%FUntitled.png?table=block&id=d-a--bb-eaab&cache=v)

- Add a Button to the Column.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feecb-ea-e-bc-f%FUntitled.png?table=block&id=d-a--bfc-cabc&cache=v)

- Customize settings, align fields, and rename buttons as desired.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faefcde-abb-d-ad-acc%FUntitled.png?table=block&id=d-a-f-ea-caba&cache=v)

 API Setup

- In the API Calls () tab, select Create API Call ().

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ff---f-fdfbe%FUntitled.png?table=block&id=d-a-c-bb-dbff&cache=v)

- Name the call (), add the Trigger on Webhook () node address, and click Add Call ().

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffbc-b-f-e-cb%FUntitled.png?table=block&id=d-a-e-bb-cacce&cache=v)

 Testing

- Run once the scenario on Latenode.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faecf-d-a-d-efabf%FUntitled.png?table=block&id=d-a-b-ac-ecdbcff&cache=v)

- In the Response & Test tab, click "Test API Call" and view the results. For the output parameter `number`, click Add JSON Path, name it (), and save ().

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcab-ca-ecd-bce-eca%FUntitled.png?table=block&id=d-a--bd-eaaff&cache=v)

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdcd--cc-bc-acfc%FUntitled.png?table=block&id=d-a-a-baf-ef&cache=v)

- Return to the Widget Tree () tab and click Add parameter ().

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcc-ac-e-ee-fcefb%FUntitled.png?table=block&id=d-a--b-dbcee&cache=v)

- Add a string parameter `number ` and click Confirm.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fabfd-aae-c--daeec%FUntitled.png?table=block&id=d-a-a-bb-edfdbe&cache=v)

- For the TextField () element, set the Initial Value () to the `number` ().

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fc-eee-bf-aaa-bcaa%FUntitled.png?table=block&id=d-a-f-adf-fcfdf&cache=v)

- For the Button () element, go to the Action section ().

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcbc--cb-ad-deca%FUntitled.png?table=block&id=d-a--a-cbfcffc&cache=v)

- Open the Action Flow Editor and add an action to call the configured API, so the request is sent to Latenode when the button is clicked. Change the output parameter name of the first action as needed.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fea-aefe--f-faebff%FUntitled.png?table=block&id=d-a--b-cef&cache=v)

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Facbf-d-d-fab-aebc%FUntitled.png?table=block&id=d-a-d-d-cefdb&cache=v)

- Add an action to pass the response to the `number ` parameter.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%F-df-ac-ece-fe%FUntitled.png?table=block&id=d-a-e-f-efcab&cache=v)

 Testing the Created Scenario and Flutterflow Form

- Click the application launch button.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fccbbb--e-ad-bfdd%FUntitled.png?table=block&id=d-a--a-feaaaad&cache=v)

- Run once the scenario on the Latenode platform.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faecf-d-a-d-efabf%FUntitled.png?table=block&id=d-a-b-afa-fbceecb&cache=v)

- Click the Generate button and view the random number generated by Latenode.