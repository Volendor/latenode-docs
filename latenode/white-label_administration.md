---
url: "https://help.latenode.com/white-label/prjuBbArcjESidVHw/administration/MWwAenfPWuZgBfnPq"
title: "Administration – Latenode | Help Center"
---

 Administration

Instructions about authorization process for your organization and the capabilities of the administrator panel within the Latenode platform


This article describes the user authorization process for your organization and capabilities of the administrator panel within the Latenode platform.

 Requirements

To follow the steps described below, you must already have a White Label administrator account on the Latenode platform, as well as a secret key for signing JWT tokens.

 Creating Custom Subscription Plans

Before you begin authorizing users from your organization within the Latenode platform, you need to create at least one subscription plan that will be automatically assigned to new users.

Initially, your organization will be provided with defined maximum and minimum values for various characteristics that can be configured for each plan. These characteristics are referred to as quotas.

List of configurable characteristics and quotas for your organization:

- Execution Microcredits

A  platform credit equals  million microcredits. Depending on the minimum execution fee (see corresponding section), users may spend less than  credit per scenario execution.

- Plug&Play Microtokens

 token equals  million microtokens. Used for Plug&Play nodes (e.g., AI nodes without connection setup), as well as for some integrations.

- Active Scenarios Limit

- Parallel Executions Limit

- Min Execution Charging Period (Microseconds)

 second equals  million microseconds. By default,  credit ( million microcredits) is charged for every  seconds of scenario execution. You can reduce the charging interval. For example, setting it to “” will charge . credit (or , microcredits) every  seconds of execution.

- AI Assistant Requests Limit

- Connected Accounts Limit

- Minimum Trigger Interval (Seconds)

- Execution History Availability Period (Minutes)

Quotas \| Latenode

![background](https://cdn.arcade.software/cdn-cgi/image/fit=scale-down,format=auto,dpr=,width=,quality=,format=jpeg/https://app.arcade.software/images/backgrounds/bg-.png)

![Step ](https://cdn.arcade.software/cdn-cgi/image/fit=scale-down,format=auto,dpr=,width=/extension-uploads/BCAAvZfetsHHgBzDsxaX/image/da-a--b-ebd.png)![Step ](https://cdn.arcade.software/cdn-cgi/image/fit=scale-down,format=auto,dpr=,width=/extension-uploads/BCAAvZfetsHHgBzDsxaX/image/acddb-ce-f-e-afff.png)![Step ](https://cdn.arcade.software/cdn-cgi/image/fit=scale-down,format=auto,dpr=,width=/extension-uploads/BCAAvZfetsHHgBzDsxaX/image/cab-f-e--faeca.png)

reCAPTCHA

Recaptcha requires verification.

[Privacy](https://www.google.com/intl/en/policies/privacy/) \- [Terms](https://www.google.com/intl/en/policies/terms/)

protected by reCAPTCHA

[Privacy](https://www.google.com/intl/en/policies/privacy/) \- [Terms](https://www.google.com/intl/en/policies/terms/)

 Creating a Plan

To create a plan:

. Log in to the administrator dashboard using your username and password

. Go to the "White Label" → "Plans" section

. Click the "Create Plan" button

. Fill in the plan name, its quotas, and click the "OK" button



After clicking the "OK" button, a new entry will appear in the plans table. You will need the ID of the created plan later. Its value can be found in the "ID" column.

Below is an interactive video showing how to create a plan.

Create plan \| Latenode

![background](https://cdn.arcade.software/cdn-cgi/image/fit=scale-down,format=auto,dpr=,width=,quality=,format=jpeg/https://app.arcade.software/images/backgrounds/bg-.png)

![Step ](https://cdn.arcade.software/cdn-cgi/image/fit=scale-down,format=auto,dpr=,width=/extension-uploads/zOqQAglIkmnWUOp/image/bfadb-ef---bb.png)![Step ](https://cdn.arcade.software/cdn-cgi/image/fit=scale-down,format=auto,dpr=,width=/extension-uploads/zOqQAglIkmnWUOp/image/defff-f--a-feeb.png)![Step ](https://cdn.arcade.software/cdn-cgi/image/fit=scale-down,format=auto,dpr=,width=/extension-uploads/zOqQAglIkmnWUOp/image/bcdb-ccc-ff-a-bb.png)

reCAPTCHA

Recaptcha requires verification.

[Privacy](https://www.google.com/intl/en/policies/privacy/) \- [Terms](https://www.google.com/intl/en/policies/terms/)

protected by reCAPTCHA

[Privacy](https://www.google.com/intl/en/policies/privacy/) \- [Terms](https://www.google.com/intl/en/policies/terms/)

 Subscription Management and Resource Usage Monitoring

To view the list of existing subscriptions, go to the “Subscriptions” section:

![Notion Image](https://www.notion.so/image/attachment%Aebd-a--aea-baceafa%Aimage.png?table=block&id=ebd-a--abf-eaf&cache=v)

Here, you can see total credit and plug&play token usage for the current billing period:

![Notion Image](https://www.notion.so/image/attachment%A-dec-d--fefa%Aimage.png?table=block&id=ebd-a-b-b-fdfeb&cache=v)

You’ll also see a table of usage per subscription for each user, with an option to cancel subscriptions:

![Notion Image](https://www.notion.so/image/attachment%Aafd-df-ce-bab-cccea%Aimage.png?table=block&id=ebd-a--bed-cfcbbc&cache=v)

To add a subscription for a user, click the “Add Subscription” button:

![Notion Image](https://www.notion.so/image/attachment%Abf-ff-e-d-acdecc%Aimage.png?table=block&id=ebd-a--afb-fafafde&cache=v)

In the modal window, select the user and the subscription plan to assign:

![Notion Image](https://www.notion.so/image/attachment%Acea-e-e-bbb-bbdadebb%Aimage.png?table=block&id=ebd-a-e-cb-ddbc&cache=v)

 Managing the User List

To view the user list, go to the “Users” section. On this page, you can see the list of users along with their assigned subscriptions. The subscription assignment functionality is also available here:

![Notion Image](https://www.notion.so/image/attachment%Afdbb-d-a-f-dbcbacfe%Aimage.png?table=block&id=ebd-a---ffcbb&cache=v)



Users are not limited in the number of subscriptions. When a user has more than one subscription, the best quotas will be applied.