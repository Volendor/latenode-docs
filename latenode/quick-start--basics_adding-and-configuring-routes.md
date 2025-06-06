---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/adding-and-configuring-routes/DTZDagipKKjCiEJ"
title: "Adding and configuring routes – Latenode | Help Center"
---

 Adding and configuring routes

Defining conditional paths and routing logic within automation workflows.


 Adding a Route

If a node is added through the route point of an existing node, a route between these nodes is established automatically.

If a node is added through the Add Node button, you should set up the route manually by connecting the two route points of the desired nodes in the correct direction.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fafece-aa-ed-adf-eca%FUntitled.png?table=block&id=d-a-fe-ab-fcdbba&cache=v)

 Route Configuration, Conditions

️

When there are multiple routes through which the scenario can proceed, the route with a value of TRUE in the Condition field will be chosen .

![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Fcbfa-aec--bbf-ec%FUntitled.png?table=block&id=d-a-a-a-edec&cache=v)

Example of a route with a Condition value of TRUE:

- If .body.ValueWH = , then TRUE;

- If .body.ValueWH = , then FALSE.

After adding the route, you can access its settings by clicking the Setup a filter button.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faec-f--afd-bfdcae%FUntitled.png?table=block&id=d-a--fa-eedcd&cache=v)

In the route configuration window, you can:

- Change the route name in the Name field( );

- Enter filter conditions in the Condition field( ), selecting logical operators for expressions in the Operators window( ) and values/parameters from previous nodes in the Data window( );

- Save the changes by clicking the Save button( ).

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fb-eb-bf-ef-baaaec%FUntitled.png?table=block&id=d-a-b-be-ebffba&cache=v)



See also Scenario example using conditions in routes