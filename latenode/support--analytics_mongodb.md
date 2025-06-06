---
url: "https://help.latenode.com/support--analytics/DTZDagfcsSJdCyLcX/mongodb/kEYxeVTtpKDbWWPWn"
title: "MongoDB – Latenode | Help Center"
---

 MongoDB

Automating MongoDB queries and data management.


To use nodes in the MongoDB group, you must obtain authorization credentials.

 Obtaining credentials

To obtain a host, login credentials, and password, you must:

\. Register in the MongoDB application and start the cluster creation process. In the Deploy your database. To test authorization, you can select the free plan and leave the default settings (cluster name in the Name field, etc.);

\. Click the Create Deployment button;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ff-aae-b-af-bcbafed%FUntitled.png?table=block&id=d-a--b-cebdc&cache=v)

\. Add a user with access to the database by defining their login ( Username) and password ( Password). The data can be copied;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fceb-ad-db-b-fbfb%FUntitled.png?table=block&id=d-a-cc--fffcad&cache=v)

\. Click the Create Database User button;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fadbac-a-ccb-ca-bcefc%FUntitled.png?table=block&id=d-a--a-cbe&cache=v)

\. Click the Choose a connection method button;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbfda-ad--ab-ed%FUntitled.png?table=block&id=d-a-e-ac-fcffdf&cache=v)

\. Select Drivers;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%F-be-d-f-fdedfe%FUntitled.png?table=block&id=d-a--aeb-dbf&cache=v)

\. Leave the default settings and view the string generated in step . Copy the part of the string after the @ and before the ?. In the example: `cluster.piecrrs.mongodb.net/` . Click the Review setup steps button.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffebe-d-ba-a-ead%FUntitled.png?table=block&id=d-a-aa-be-cacfdce&cache=v)

\. View the string to connect in the next setup window (you can copy part of the string if not done in the previous step). Click the Done button.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fee-afd--aad-fccca%FUntitled.png?table=block&id=d-a--bf-ccdeebb&cache=v)

\. View the created cluster on the Database tab;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fca-e--e-fcdbaa%FUntitled.png?table=block&id=d-a-ac-c-dcaffd&cache=v)

\. Go to the Network Access tab and click on the Add IP Address button;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffd-bac--a-ccbd%FUntitled.png?table=block&id=d-a-ab--ffd&cache=v)

\. Click the Allow access from anywhere button (no special access settings are needed to test authorization). Click the Confirm button.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffcf-b---dedb%FUntitled.png?table=block&id=d-a-b--fa&cache=v)

\. View access availability on the Network Access tab .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fefdc-e-f-bd-feff%FUntitled.png?table=block&id=d-a-a-d-cdd&cache=v)

️

For authorization you will need: login and password from p.p.  and a part of the string from p.p. .

 Configuring authorization in nodes

When configuring a node in the MongoDB group, authorization is required. To do this, you need to:

. Select the required node from the MongoDB group ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcbf-f-c--aeebead%FUntitled.png?table=block&id=d-a-dc-d-effaebef&cache=v)

\. Click the Create an authorization button;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffce---bca-dcecef%FUntitled.png?table=block&id=d-a--e-fabaae&cache=v)

\. Сlick on New Authorization and select MongoDB API Key;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbaab-b--accf-ddded%FUntitled.png?table=block&id=d-a-a-bb-efdad&cache=v)

\. In the fields for credentials enter the host (part of the string from step  of the instructions above), login and password (from step  of the instructions above). Click the Authorize button;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcc-ba---befde%FUntitled.png?table=block&id=d-a--bb-fbfa&cache=v)

\. View whether the node is authorized and fill in the remaining node configuration fields.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fb-cf---dcaf%FUntitled.png?table=block&id=d-a-e-af-cbcae&cache=v)

You can view the result of the node execution when you run the scenario or by clicking on the node's Run Once button.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fab--df-b-bec%FUntitled.png?table=block&id=d-a-f-bf-efffb&cache=v)