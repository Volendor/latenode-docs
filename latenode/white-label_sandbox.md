---
url: "https://help.latenode.com/white-label/prjuBbArcjESidVHw/sandbox/UdcfuTtCkPhUvNzDC"
title: "Sandbox – Latenode | Help Center"
---

 Sandbox

Here is an example of how to generate a JWT and use it.


 User Authorization in the Platform

A [sandbox repository](https://github.com/garkavenko-latenode/whitelabel-example) is available for testing user authorization. You can find setup instructions in the repository's [README.md](http://readme.md/).

 Token Generation

. After launching the sandbox, open the "JWT Generation" section. This section helps you generate a JWT token for a user in your organization. You can use this token to authorize the user in the embedded mode of the Latenode platform.

. Paste your private key into the “Private Key” input field and select the signing algorithm corresponding to your key pair.

. Fill in the Tenant ID, User ID, and Plan ID fields, where:

`Tenant ID` – Required. Your tenant ID in the Latenode platform

`User ID` – Required. A unique string that clearly identifies the user in your organization

`Plan ID` – Optional. The ID of the subscription plan to be assigned to the user during their first login. For future logins, this field is not required. In this example, the created plan ID is “”

. Click the “Generate Token” button to create a new JWT token, which you can copy using the “Copy” button.



Token generation is done locally without network requests. This ensures your private key is not sent to the Latenode platform or any third parties.

Below is an interactive video showing token generation

JWT GENERATION \| LATENODE

![background](https://cdn.arcade.software/cdn-cgi/image/fit=scale-down,format=auto,dpr=,width=,quality=,format=jpeg/https://app.arcade.software/images/backgrounds/bg-.png)

![Step ](https://cdn.arcade.software/cdn-cgi/image/fit=scale-down,format=auto,dpr=,width=/extension-uploads/euGSVRHFZKINWXgo/image/bbf-fd--bedf-caf.png)![Step ](https://cdn.arcade.software/cdn-cgi/image/fit=scale-down,format=auto,dpr=,width=/extension-uploads/euGSVRHFZKINWXgo/image/aa-cb-cd-acb-befca.png)

reCAPTCHA

Recaptcha requires verification.

[Privacy](https://www.google.com/intl/en/policies/privacy/) \- [Terms](https://www.google.com/intl/en/policies/terms/)

protected by reCAPTCHA

[Privacy](https://www.google.com/intl/en/policies/privacy/) \- [Terms](https://www.google.com/intl/en/policies/terms/)

 Using token

Once the JWT token is generated, go to the “White Label” section. Paste the copied value into the “JWT Token” field. In the “UI Config JSON” field, insert the following:

```
{
  "scenarios": {
    "hideEmptyScenariosGreetings": true
  },
  "main": {
    "hideSideMenu": false
  }
}

```

Then click the “Init” button. After that, an embedded version of the Latenode platform will appear on the right side of the screen, with the new user already authorized, in this case with ID = `tu_`

![Notion Image](https://www.notion.so/image/attachment%Adce-a-dc-f-ffeae%Aedf-d-a-ac-fcad.png?table=block&id=fd-a-de-bbb-ccfdc&cache=v)