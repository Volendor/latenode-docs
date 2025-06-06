---
url: "https://help.latenode.com/support--analytics/DTZDagfcsSJdCyLcX/possible-errors-in-nodes/qmYDxtWxyPYpsSVAL"
title: "Possible errors in nodes – Latenode | Help Center"
---

 Possible errors in nodes

Common errors and troubleshooting solutions.


Usually, the cause of an error is clearly stated at the bottom of the error message. For example, in the error:

```
exec command error: request to pd server
code 
error: ETELEGRAM:  Bad Request: chat not found

```

The " Bad Request: chat not found" part indicates that the issue is likely due to an incorrect or missing chat ID. Always check the last lines of the error message for clues on what went wrong.

  

 HTTP Error Codes

These errors occur when making HTTP requests.

 Client Errors (xx)

-  Bad Request – Invalid request (incorrect data format, missing parameters).

-  Unauthorized – Authentication error (wrong API key, token, login/password).

-  Forbidden – Access denied (insufficient permissions, IP restrictions).

-  Not Found – Requested resource not found (wrong URL or deleted object).

-  Method Not Allowed – The request method (GET, POST, PUT, etc.) is not supported by the server.

-  Request Timeout – The server did not receive a response in time.

-  Too Many Requests – Request limit exceeded (Rate Limit Exceeded).

 Server Errors (xx)

-  Internal Server Error – Unexpected server failure.

-  Bad Gateway – Proxy or gateway issue (e.g., API server is down).

-  Service Unavailable – The external service is overloaded or temporarily unavailable.

-  Gateway Timeout – The server did not respond in time.

  

 JavaScript Error Codes

These errors occur when executing code inside nodes.

- SyntaxError – Syntax error (e.g., missing bracket or comma).

  

 Authentication Errors

These errors occur when connecting to services using OAuth ..

- invalid\_request – Invalid parameters in the OAuth request.

- invalid\_client – Incorrect client identifier (Client ID).

- invalid\_grant – Invalid authorization code or refresh token.

- unauthorized\_client – The client does not have permission to access.

- access\_denied – The user denied the authorization request.

- unsupported\_grant\_type – Unsupported authorization request type.

  

 Webhook Errors

If your webhook suddenly stops receiving requests, even though it previously worked fine, and you can’t identify the cause — try opening the webhook URL directly in your browser.

If you see the following error message:

```
building js code is failed: Node build fatal error
```

It means that there is invalid JavaScript code in one of your scenario’s nodes. Most likely, recent changes introduced code that can’t be compiled.

This error occurs during the build phase, before the scenario even starts running — which is why you won’t see it in the execution history

  

 Unexpected symbol: r at position 

This happens when you use a template like `{{result.customer.first_name}}` in a field that doesn’t support it, or the variable doesn't exist.

Example:

```
error in expression `{{result.customer.first_name}}`
Unexpected symbol: r at position 

```

Fix: Make sure the field supports `{{...}}` syntax, and check that `result.customer.first_name` exists in the incoming data.