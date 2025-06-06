---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/http-request/kEYxeVVDFKvKetKV"
title: "HTTP Request – Latenode | Help Center"
---

 HTTP Request

Sending and receiving HTTP requests for API communication.


![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Fdfa-dd-bf--ffaf%FUntitled.png?table=block&id=d-a-b-a-ddfddc&cache=v)

 Node Description

HTTP Request \- an action-type node used to send requests to an external application's API.

This node supports sending requests over both HTTP and HTTPS protocols.

 Node Configuration

To configure the HTTP Request node, you need to fill in both required and optional fields.

The required \ fields are:

- URL;

- Method.

![Notion Image](https://www.notion.so/image/attachment%Ab-a-e-b-cbc%Abrave_qmdFjaegH.png?table=block&id=bdd-a--be-ffeda&cache=v)

 URL

The URL field is where you input the URL of the external application's API that you want to send a request to.



Variables and parameters from other nodes can be inserted into the URL using the "?" symbol

 Method

The field is used to enter the name of the method used in the request (GET/POST/PUT/PATCH/DELETE).

![Notion Image](https://www.notion.so/image/attachment%Afe--ad-b-fefa%Abrave_UDYzuyVB.png?table=block&id=bdd-a-da-ad-efcbbcdf&cache=v)

 Proxy

The configuration block with fields includes:

- Enter proxy address: A field for entering the address of the proxy through which the request should be routed.

- Enter login: A field for entering credentials for using the proxy.

- Enter password: A field for entering credentials for using the proxy.

These fields are filled in when access to the external application's API is restricted to the local network.

![Notion Image](https://www.notion.so/image/attachment%Afcee-d-ec-b-ffdaec%Abrave_DrFvMPYCCL.png?table=block&id=bdd-a-d-bc-d&cache=v)

 Body

The block of fields for configuring and filling in the request body includes:

![Notion Image](https://www.notion.so/image/attachment%Afee-ce-d-f-bbf%Abrave_KSVXnuvRP.png?table=block&id=bdd-a---cbfbee&cache=v)

Before filling in the field, you need to select the format in which the request body will be transmitted (you can see a more detailed description [here](https://developer.mozilla.org/ru/docs/Web/HTTP/Methods/POST)):

- raw;

- form-data;

- x-www-form-urlencoded.

When selecting the form-data and x-www-form-urlencoded options, you have access to:

- The Add a param button ( ) for adding a new Key-Value pair;

- The Delete button ( ) for removing a Key-Value pair.

![Notion Image](https://www.notion.so/image/attachment%Ac-a-c-b-deea%Abrave_uTnyCtlTeV.png?table=block&id=bdd-a-c-c-ffcb&cache=v)

 Headings

The block of fields for filling in request headers:

- Key \- a field for entering additional information about the request. For example, the format - content-type;

- Value \- a field for entering the value of additional information about the request. For example, the value of the format - application/json.

To add a new Key-Value pair, use the Add a header button ( ). To delete a Key-Value pair, use the Delete button( ).

![Notion Image](https://www.notion.so/image/attachment%Afad-fb-a--ddaebea%Abrave_YPKFKhOm.png?table=block&id=bdd-a--bc-caead&cache=v)



When authorizing via a Bearer token, one of the request headers should be the pair with the Key "Authorization" and the Value "Bearer <token>.”

 Authorization

A block of fields for selecting an authentication method and entering authentication credentials. The following authentication methods are available for selection:

- Without authentication \- for sending requests that do not require authentication or require authentication via a Bearer token;

- Basic auth \- for sending requests that require basic authentication;

- Digest auth \- for sending requests that require digest authentication;

- NTLM auth \- for sending requests that require NTLM authentication.

When choosing the authentication methods Basic auth/Digest auth, you need to enter credentials, which include a username and password. In the case of selecting the NTLM auth method, you must input a username, password, and domain.

![Notion Image](https://www.notion.so/image/attachment%Abaa-a-aa-bbe-dadbfdc%Abrave_lHFnbRWCs.png?table=block&id=bdd-a--bbe-fedd&cache=v)

 Hiding data in history

A toggle switch for data hiding.

Additional logic for data concealment can be configured in the field that appears when clicking the Advanced Settings button.

 Quick node configuration

Applications that provide APIs may specify HTTP request examples in CURL format. For example

```
curl -X GET https://api.test.com/v/email/balance \
     -H 'Content-Type: application/json'      \
     -H 'Authorization: Bearer $API_TOKEN'
```

To quickly configure an HTTP Request node, follow these steps:

\. Click on Create from Example (CURL);

![Notion Image](https://www.notion.so/image/attachment%A--f-a-effefdfe%Abrave_JoNUbaJO.png?table=block&id=bdd-a-d-ac-eacebf&cache=v)

\. Copy the example request and paste it into the modal window. Then, click the Create button:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcad-daf-f-db-efc%FUntitled.png?table=block&id=d-a--aa-cfabcbe&cache=v)

\. Review the filled fields for the HTTP Request node .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdc-f-b-baa-dfafc%FUntitled.png?table=block&id=d-a-b-be-ccacc&cache=v)