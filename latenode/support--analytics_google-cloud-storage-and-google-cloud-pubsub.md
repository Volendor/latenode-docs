---
url: "https://help.latenode.com/support--analytics/DTZDagfcsSJdCyLcX/google-cloud-storage-and-google-cloud-pubsub/kEYxeVVXtkdrrMtCvDn"
title: "Google Cloud Storage and Google Cloud Pub/Sub – Latenode | Help Center"
---

 Google Cloud Storage and Google Cloud Pub/Sub

Managing cloud storage and message queues.


To use nodes from the Google Cloud Storage and Google Cloud Pub/Sub groups, you need to obtain a key (token) and authorize access.

 Obtaining a Token

To get a key (token), follow these steps:

\. Create a Google account and visit [this link](https://cloud.google.com/iam/docs/creating-managing-service-accounts).

\. On the Create service accounts page, click Enable the API.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcebcc-fb-b-bbe-dbfbf%FUntitled.png?table=block&id=d-a-b-c-c&cache=v)

\. On the Enable API wizard page, click CREATE PROJECT.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ff-cba-e-ac-aaffce%FUntitled.png?table=block&id=d-a-a--ddccff&cache=v)

\. Configure the project and click CREATE.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fedbc--afd--cead%FUntitled.png?table=block&id=d-a-f-b-eadb&cache=v)

\. Confirm the project and allow API usage.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fedac---adc-fcbe%FUntitled.png?table=block&id=d-a--d-fedadfc&cache=v)

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fd-d-a-aee-eebef%FUntitled.png?table=block&id=d-a-b--cdbe&cache=v)

\. Go to [this link](https://cloud.google.com/iam/docs/creating-managing-service-accounts) and scroll down. Click Go to Create a service account.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fda--a-ec-ffaaeefd%FUntitled.png?table=block&id=d-a-a-cd-fddc&cache=v)

. Select the project created in step .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdbea-cbd-f-ac-eff%FUntitled.png?table=block&id=d-a--d-ddfe&cache=v)

\. Configure the account details (only the name is mandatory, but defining access rights is recommended) and click DONE.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fd-d--ab-dedd%FUntitled.png?table=block&id=d-a-f-b-ebabee&cache=v)

\. Go to [this link](https://cloud.google.com/iam/docs/creating-managing-service-account-keys) and scroll down. Click Go to Service accounts.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fafcdce-e-ba-e-fbddf%FUntitled.png?table=block&id=d-a-d-bb-ccaffd&cache=v)

\. Select the project created in step .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdbcaf-e-e--cebffdb%FUntitled.png?table=block&id=d-a--ba-fdca&cache=v)

\. Select the account address for which you need to create a key.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feaf--e-ae-fcdfc%FUntitled.png?table=block&id=d-a-ee-acae-fedacec&cache=v)

\. Go to the KEYS tab and click the ADD KEY dropdown.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdeba-ce-da-f-dbfee%FUntitled.png?table=block&id=d-a-ac-f-ffaa&cache=v)

\. Choose Create new key.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcfb-de-f-bb-bddc%FUntitled.png?table=block&id=d-a--bea-fab&cache=v)

\. Select the JSON key type and click CREATE.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffed-a--d-fabdeca%FUntitled.png?table=block&id=d-a-bc-ca-faecec&cache=v)

\. View the downloaded key in JSON format. Open the file in any text editor and copy its contents.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fd-d-a-b-efbf%FUntitled.png?table=block&id=d-a--adc-fafb&cache=v)

\. Go to [this link](https://console.cloud.google.com/apis/library) and select the project created in step .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fad-aae-ec-bbde-ffe%FUntitled.png?table=block&id=d-a-e-be-fab&cache=v)

\. Search for the desired API and choose either Cloud Storage API or Cloud Pub/Sub API.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fca-ec--dca-cf%FUntitled.png?table=block&id=d-a--bb-cebcccfb&cache=v)

\. Enable the API by clicking ENABLE.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fddfea-da-e-a-caeb%FUntitled.png?table=block&id=d-a--bf-eedf&cache=v)

 Authorization Setup in Nodes

When configuring nodes in the Google Cloud Storage and Google Cloud Pub/Sub groups, you need to authorize access. To do this:
\. Select the desired node, for example, from the Google Cloud Pub/Sub group.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%F-cb-cb-aa-ebceb%FUntitled.png?table=block&id=d-a-ee-ef-eeedec&cache=v)

\. Click the Create an authorization button.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feacb--b-e-cdfbe%FUntitled.png?table=block&id=d-a-e-aaea-cfca&cache=v)

\. Click New authorization and choose Cloud Pub/Sub.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fd-b-b-ac-baaea%FUntitled.png?table=block&id=d-a-ec-bad-cbcdc&cache=v)

\. In the service\_json field, enter the previously obtained key in JSON format and click Authorize.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdeeb-a-da-e-defdaa%FUntitled.png?table=block&id=d-a--be-dbced&cache=v)

\. Verify the authorization in the node and complete the remaining node configuration fields.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fba-bde-ca-a-fcafb%FUntitled.png?table=block&id=d-a--b-faba&cache=v)

You can view the node's execution result by running the scenario or clicking the Run once button on the node.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcc-fb-df-f-fbace%FUntitled.png?table=block&id=d-a-f--fdcf&cache=v)