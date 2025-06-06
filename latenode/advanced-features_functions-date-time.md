---
url: "https://help.latenode.com/advanced-features/DTZDaggyNRLGe/functions-date-time/DTZDaggXRqzgoSX"
title: "Functions (date, time) – Latenode | Help Center"
---

 Functions (date, time)

Working with date and time functions for scheduling and time-sensitive operations.




You can use our GPT Assistant for help with Latenode operators:

 [Latenode Operators Assistant](https://chatgpt.com/g/g-dcbebf-latenode-operators-assistant)

It can guide you on writing expressions, using variables, filters, and building logic inside your scenarios.

 Algorithm

Operators in this group ensure the execution of logical operations with operands of the date/time type. The result of the operations is the date.

 Result

 addMinutes

This operator generates a new date value:

- adding the specified number of minutes to the current date value, if a positive value is specified;

Example: If .ValueSV = --T: :Z, then --T: :Z.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fa-d---cafbab%FUntitled.png?table=block&id=d-a-fe-b-cfdb&cache=v)

- subtracting the specified number of minutes from the current date value, if a negative value is specified.

Example: If .ValueSV = --T: :Z, then --T: :Z.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcdabde-d-ec--fefc%FUntitled.png?table=block&id=d-a--bb-ebae&cache=v)

 addHours

This operator generates a new date value:

- adding the specified number of hours to the current date value, if a positive value is specified;

Example: If .ValueSV = --T ::Z, then --T ::Z.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcdc--ca-abc-cdabeb%FUntitled.png?table=block&id=d-a--b-eecee&cache=v)

- subtracting the specified number of hours from the current date value, if a negative value is specified.

Example: If .ValueSV = --T ::Z, then --T ::Z.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fe-ac-b-ab-ecdd%FUntitled.png?table=block&id=d-a--fe-ebbadde&cache=v)

 addDays

This operator generates a new date value:

- adding the specified number of days to the current date value, if a positive value is specified;

Example: If .ValueSV = --  T::Z, then --  T::Z.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fafc-fe-f-a-afe%FUntitled.png?table=block&id=d-a--bc-cdeec&cache=v)

- subtracting the specified number of days from the current date value, if a negative value is specified.

Example: If .ValueSV = -- T::Z, then -- T::Z.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%F-cfd-ea-bf-cf%FUntitled.png?table=block&id=d-a--bb-cfbdaf&cache=v)

 addMonths

This operator generates a new date value:

- adding the specified number of months to the current date value, if a positive value is specified;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcdadebe-e--d-dfdccfae%FUntitled.png?table=block&id=d-a--bac-dfbe&cache=v)

Example: If .ValueSV = --T::Z, then - -T::Z.

- subtracting the specified number of months from the current date value, if a negative value is specified.

Example: If .ValueSV = -- T::Z, then -- T::Z.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fedea-ac-c-a-dafa%FUntitled.png?table=block&id=d-a-f-a-cfcdaaea&cache=v)

 setMinute

This operator generates a new date value by replacing the minutes of the current date with a specified value.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fda-c-d-a-cffdefe%FUntitled.png?table=block&id=d-a-d-eba-cdbcb&cache=v)

- Example: If .ValueSV = --T::Z, then --T: :Z.

 setHour

This operator generates a new date value by replacing the hours of the current date with a specified value.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fadcdac-bb-e--abaf%FUntitled.png?table=block&id=d-a-ab--ebebde&cache=v)

- Example: If .ValueSV = --T::Z, then --T ::Z.

 setDay

This operator generates a new date value by replacing the day of the current date with the specified value. The new day value can be either a number or the name of the day in Latin



If the specified value is in the range from  to , the resulting date will fall within the current week (from Sunday to Saturday), and the new day will correspond to its ordinal number. If the specified value is outside the range from  to , the resulting date will belong to the previous or next week.

- Example: If .ValueSV = --T::Z, then --  T::Z.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fcad-ea-c-cb-adafacee%FUntitled.png?table=block&id=d-a--bf-efafe&cache=v)

- Example: If .ValueSV = --T::Z, then --T::Z.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fbeca-aa-e-c-fbadec%FUntitled.png?table=block&id=d-a-e-bfd-dfabb&cache=v)

 formatDate

This operator returns the date in the requested format and in the specified time zone if provided.



You can find the list of time zones [here](https://en.wikipedia.org/wiki/List_of_tz_database_time_zonesList).

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbab-ee-bf-df-bacbad%FUntitled.png?table=block&id=d-a-f-abe-feabeabb&cache=v)

- Example: If .ValueSV = --T::Z, then .. :

 parseDate

This operator converts a string into a date in the requested format.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fde-f-f-bc-dadafa%FUntitled.png?table=block&id=d-a-b-c-eaadafbfa&cache=v)

- Example: If .ValueSV = --, then --T::Z.

 Combination of parseDate and formatDate

In cases where the initial date value is provided as a string, the combination of parseDate and formatDate can be used. This allows you to first convert the string into a date value and then format it into the desired format.

Example: If .ValueSV = "-- ::" (string), to convert it into the format DD.MM.YYYY HH:mm:ss, use the following construction:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffda-dcc-c-bc-bbd%Fimage.png?table=block&id=d-a-b-d-deaeef&cache=v)

Result: .. ::.

Tip:

Use this combination if:

- The initial date value is provided as a string.

- You need to convert the string into a date value and format it into the required format.