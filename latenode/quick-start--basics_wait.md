---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/wait/kEYxeVTBEAcZSuyu"
title: "Wait – Latenode | Help Center"
---

 Wait

Introducing delays in scenario execution.



![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fedba--ea-bf-ccdccfaa%FUntitled.png?table=block&id=d-a--ab-ced&cache=v)

 Node Description

Wait\- an action-type node necessary for introducing a pause during scenario execution using:

- setting a delay time, for example,  minutes;

- setting a specific time until which the wait is required, for example, --T::Z.



The Wait node can be placed between scenario nodes. This allows for a temporal gap in the execution of scenario nodes before the Wait node and those after the Wait node.
Seethe example of using the Wait node

 Node Configuration

To configure the Wait node, it is necessary to fill in the required or optional fields in one of the two tabs: Wait until or Delay.

 Wait until

The Wait until tab is necessary for setting the time until which one must wait before executing the scenario nodes that follow the Wait node. Configuration is done using the fields:

- Date and Time \- a field for selecting the date and time in the [ISO-](https://en.wikipedia.org/wiki/ISO_) format when the scenario nodes following the Wait node should be executed .

- Timezone (mandatory field) - a field for selecting the timezone according to which the pause should be set.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffb-c-c-abf-ebdefc%FUntitled.png?table=block&id=d-a--bc-ebdda&cache=v)

 Delay

The Delay tab is necessary for setting the waiting period after which the scenario nodes following the Wait node should be executed. Configuration is done using the fields:

- Days \- a field for selecting the number of days in the waiting period;

- Hours \- a field for selecting the number of hours in the waiting period;

- Minutes \- a field for selecting the number of minutes in the waiting period;

- Seconds \- a field for selecting the number of seconds in the waiting period.

When calculating the waiting time, the values entered in the fields are summed up. For example, the waiting time will be  day,  hours,  minutes, and  seconds if the field values are:

- Days \- ;

- Hours \- ;

- Minutes \- ;

- Seconds \- .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdf-da-bc-e-efebce%FUntitled.png?table=block&id=d-a---eef&cache=v)