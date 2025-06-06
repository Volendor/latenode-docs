---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/setting-up-a-telegram-bot-trigger-via-webhooks-to-resolve-delay-issues/tABeZSJMmfJXrVh"
title: "Setting Up a Telegram Bot Trigger via Webhooks to Resolve Delay Issues – Latenode | Help Center"
---

 Setting Up a Telegram Bot Trigger via Webhooks to Resolve Delay Issues

At the moment, Telegram triggers, when used as application triggers, do not operate instantly, which is often critical—especially for chatbots, where response speed is of utmost importance.

> That’s why I’m sharing a guide on setting up Telegram triggers via WebHook, completely eliminating any delay issues.

 WebHook Setup Process

First, add a Trigger on Webhook node to your scenario.

![Notion Image](https://www.notion.so/image/attachment%Abacdb-d---aecfe%Abaccbbbfefeefe.png?table=block&id=cd-a-b-dd-cdbbb&cache=v)

This node offers two WebHook versions:

- Dev (for development and testing)

- Prod (for autonomous operation)

Copy the Prod WebHook URL for further setup.

> After this, the scenario must be deployed for the PROD WebHook to become active.

Next, add an HTTP Request node.

![Notion Image](https://www.notion.so/image/attachment%Abdfa-c-d-a-badb%Aceefbbccabdfd.png?table=block&id=cd-a-f-af-dbae&cache=v)

To configure the WebHook, send a GET request to the following URL:

```
<https://api.telegram.org/bot{my_bot_token}/setWebhook?url={url_to_send_updates_to}>

```

Simply paste this URL into the URL field and replace the variables:

![Notion Image](https://www.notion.so/image/attachment%Aaeda--a-a-cfacbe%Abdbbbbcebbafbbccdbabe.png?table=block&id=cd-a-bb-e-cf&cache=v)

Where:

- `{my_bot_token}` — your bot token from BotFather

- `{url_to_send_updates_to}` — your Prod WebHook URL

After sending the request, a successful response will look like this:

![Notion Image](https://www.notion.so/image/attachment%Ae-d-a-afd-beadb%Aaaaededadeebbf.png?table=block&id=cd-a-d-baa-dbdaf&cache=v)

  

 Verifying WebHook Setup

To ensure the WebHook is working, send another request:

```
<https://api.telegram.org/bot{my_bot_token}/getWebhookInfo>

```

Example of a successful response:

```
{
 "ok": true,
 "result": {
   "url": "<https://www.example.com/my-telegram-bot/>",
   "has_custom_certificate": false,
   "pending_update_count": ,
   "max_connections": 
 }
}

```

![Notion Image](https://www.notion.so/image/attachment%Aefcf-e-be-bad-fab%Aeceabefceeddceb-.png?table=block&id=cd-a---fdffbe&cache=v)

This method allows your Telegram bot to process updates automatically via WebHook rather than manually polling the API.

  

Now, your Prod WebHook will start receiving updates from Telegram.

> Note: Telegram sends ALL updates, including message updates and other events. Therefore, it is recommended to configure more flexible filtering. On higher-tier plans, requests blocked by the first filter are nearly cost-free.

  