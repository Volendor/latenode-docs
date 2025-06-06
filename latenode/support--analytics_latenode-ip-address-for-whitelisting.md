---
url: "https://help.latenode.com/support--analytics/DTZDagfcsSJdCyLcX/latenode-ip-address-for-whitelisting/FeapEAfPrQMqLfi"
title: "Latenode IP Address for Whitelisting – Latenode | Help Center"
---

 Latenode IP Address for Whitelisting

IPs to allow for external connections.


When adding Latenode to the allowlist of external services such as databases, webhooks, or APIs, please use the following static IP address:

...

This IP address is static and can be safely whitelisted across your infrastructure.

 Verifying the IP

To check which IP address is being used by your scenario when making outbound requests, you can call any external service that returns the requester's public IP.

Example using `curl` :

```
curl https://api.ipify.org?format=json
```

If you run this inside a Latenode scenario, the response should be:

```
{"ip":"..."}
```

This will confirm that your scenario's outbound requests are coming from the correct IP address.