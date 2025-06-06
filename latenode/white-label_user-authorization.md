---
url: "https://help.latenode.com/white-label/prjuBbArcjESidVHw/user-authorization/UdcfuTtEbTpiLZSNPpe"
title: "User Authorization – Latenode | Help Center"
---

 User Authorization

Instructions for tenant user auth


 User Authentication

A key advantage of Latenode integration is its authentication simplicity. Users sign in through your application, receiving a special token to access Latenode functions. The system uses JSON Web Token (JWT), secured by a unique private key from Latenode. The JWT contains user data from your system. After Latenode platform verifies the JWT signature, the user receives client privileges and can work with integrations within their account.

 Signature Private Key

Before you can generate a JWT, you will need a valid signature key from Latenode. Contact support to obtain the key.



Keep this key in a secure location - it will be used to verify user authentication in your application.

 Creating and Signing JWT

Now that you have the signature key, you can create and sign a JSON Web Token (JWT). To do this, you can use one of the [libraries](https://jwt.io/libraries) suitable for your backend.

The JWT that you generate for the user must have the following properties:

- Header must specify the encryption algorithm and look something like this::

```
{
  "alg": "RS",
  "typ": "JWT"
}
```

Supported JWT algorithms:

RS, RS, RS
ES, ESK, ES, ES
PS, PS, PS

- Private signature key issued by Latenode

- Payload with the following data:

`tenant_id` \- Required numeric field. Provided by the Latenode platform.
`user_id` \- Required field. ID of the user in your organization. A unique string value that uniquely identifies the user.
`plan_id` \- Optional numeric field. ID of the tariff plan that will be set for the user if this is the user's first authorization on the platform. This field does not need to be filled in afterwards.

JWT `Payload` example

```
{
  "tenant_id": ,
  "user_id": "",
  "plan_id": 
}
```

Creating a JWT token is sufficient to register or authorize a user on the Latenode platform. Use this token in the `configure` sdk method. If the user is new, they will be automatically registered and authorized.