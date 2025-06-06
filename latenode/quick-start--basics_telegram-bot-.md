---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/telegram-bot-/kwJFUDKeuvrrbaLiZmq"
title: "Telegram Bot  – Latenode | Help Center"
---

 Telegram Bot

Setting up and automating interactions with a Telegram bot.


 Trigger New Updates (Instant)

 General Information

The bot we are working with must be an admin of the group from which we want to receive events; it must have admin rights in that group.

Telegram allows only one trigger per bot. To use multiple bots, each must have its own unique trigger.

When the trigger is deployed, Telegram disables our ability to receive the latest updates. Any update received via the webhook is automatically "forgotten" by Telegram and cannot be retrieved.

In Run Once mode from the node, you will receive mock data that is available only for scenario building in dev mode.

![Notion Image](https://www.notion.so/image/attachment%Aaffcf-b-b--dfea%Aimage.png?table=block&id=bd-a-ff-ba-ddbe&cache=v)

![Notion Image](https://www.notion.so/image/attachment%Aebe-aaa-fd-ae-cdc%Aimage.png?table=block&id=bd-a-f-bd-ccbcffe&cache=v)

If you want to receive a message when pressing the Run Once button in the scenario, press it and create a trigger event within a minute by sending a message to the bot’s chat.

![Notion Image](https://www.notion.so/image/attachment%Aba---add-bfea%Aimage.png?table=block&id=bd-a---ccddfece&cache=v)

If you want to receive messages continuously, deploy and activate the scenario and wait for events from the production version of the scenario.

![Notion Image](https://www.notion.so/image/attachment%Afacc-cba-c-d-cbf%Aimage.png?table=block&id=bd-a-d-afe-eabb&cache=v)

 How to Get the Latest Message Using Save & Run:

. Create a new trigger.

. Deploy and activate the scenario – this will create and activate the webhook.

. Deactivate the scenario.

. All subsequent new messages will be stored in a list (similar to the List Updates block).

. When running the Save & Run block, you will receive the latest message from this list.

. If you activate the scenario, the webhook will wait for production events and will no longer return the last event from the dev environment upon execution. It will only return new events from the production environment.