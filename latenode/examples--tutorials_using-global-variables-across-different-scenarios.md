---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/using-global-variables-across-different-scenarios/DTZDaggpdasAzfwPAh"
title: "Using global variables across different scenarios – Latenode | Help Center"
---

 Using global variables across different scenarios

Synchronizing variables across multiple workflows.




[Link to the scenario Getting and writing three global variables](https://app.latenode.com/shared-scenarios/cadefbc)



[Link to the scenario Processing Global Variables](https://app.latenode.com/shared-scenarios/badefba)

As an example of using global variables, let's create two scenarios:

- The first scenario will record the current temperature in London when manually triggered. A global variable will be created for each temperature value, and the value will be recorded.

- The second scenario will calculate the daily average temperature in London based on the recorded global variables. This scenario will run once a day when manually triggered.

 Getting and writing three global variables

To set up the scenario _Getting and writing three global variables_, you need to add six nodes and configure three routes:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdcd-d-c-ab-abadfd%FUntitled.png?table=block&id=d-a-c-bc-cbcdcf&cache=v)

- (  ) Trigger on Run once: This node initiates the scenario when you click the Run Once button;

- (  ) HTTP request: This node sends a GET request to the [OpenWeather](https://openweathermap.org/) service to retrieve the temperature in London ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fd-c--b-afadbfebb%FUntitled.png?table=block&id=d-a-bc-bb-cfbbb&cache=v)

- (  ) JavaScript: This node calculates the time of day (morning, day, night) with the following code:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcd-f-bf-abd-edf%FUntitled.png?table=block&id=d-a-a--dfeee&cache=v)

```
export default async function run({execution_id, input, data, store}) {
    // Create a Date object for UTC
    const now = new Date();

    // Define the time offset for Istanbul timezone (UTC+)
    const timezoneOffset =   ;

    // Adjust the current time for the Istanbul timezone
    now.setMinutes(now.getMinutes() + now.getTimezoneOffset() + timezoneOffset);

    // Get the hours adjusted for the Istanbul timezone
    const hours = now.getHours();

    let timeOfDay; // Variable for the time of day

    // Determine the time of day
    if (hours >=  && hours < ) {
        timeOfDay = "morning";
    } else if (hours >=  && hours < ) {
        timeOfDay = "day";
    } else {
        timeOfDay = "night";
    }

    // Return an object with the time of day
    return {
        timeOfDay: timeOfDay
    };
}
```

- ( . ) Route morning: Configure this route from the JavaScript node to proceed if the calculated time of day is _morning_. Add the condition:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feb-f--ade-df%FUntitled.png?table=block&id=d-a-d-fc-eeed&cache=v)

- ( . ) Route day: Configure this route from the JavaScript node to proceed if the calculated time of day is _day_. Add the condition:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffbff-ed-ca-bf-faca%FUntitled.png?table=block&id=d-a-f-a-ceff&cache=v)

- ( . ) Route night: Configure this route from the JavaScript node to proceed if the calculated time of day is _night_. Add the condition:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fddb--f-ad-accccdc%FUntitled.png?table=block&id=d-a-da-a-fbb&cache=v)

- (  ) SetGlobalVariables: This node creates the global variable morningTemp, containing the morning temperature value obtained during _morning_ from the HTTP request node ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feabf-f-aa-be-cdbcbad%FUntitled.png?table=block&id=d-a--da-ccfcddde&cache=v)

- (  ) SetGlobalVariables: This node creates the global variable dayTemp, containing the daytime temperature value obtained during _day_ from the HTTP request node ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcebbb--d-f-aafba%FUntitled.png?table=block&id=d-a--fd-efdfce&cache=v)

- (  ) SetGlobalVariables: This node creates the global variable nightTemp, containing the nighttime temperature value obtained during _night_ from the HTTP request node ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fabe-f-ef-babe-ddaae%FUntitled.png?table=block&id=d-a-b-b-cb&cache=v)

The result of this scenario is the recording of three global variable values. You can view these values in the variables table.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fefb-e-f-bfce-aebcc%FUntitled.png?table=block&id=d-a-a-ed-eaaeea&cache=v)

 Processing Global Variables

To set up the scenario _Processing Global Variables_, you need to add three nodes:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fb-ee-b-bc-afbb%FUntitled.png?table=block&id=d-a-a-d-cace&cache=v)

- (  ) Trigger on Run once: This node initiates the scenario when you click the Run Once button;

- (  ) JavaScript: This node calculates the daily average temperature using the code below. It uses the morningTemp, dayTemp, nightTemp variables obtained and recorded in the _Getting and writing three global variables_ scenario:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ff-fa-f-f-fcf%FUntitled.png?table=block&id=d-a-e-abd-dfdbd&cache=v)

```
import axios from 'axios';

export default async function run({execution_id, input, data}) {
    // Retrieve temperature values in Kelvin and convert to Celsius
    const dayTempCelsius = parseFloat(data["{{%.dayTemp}}"]) - .;
    const morningTempCelsius = parseFloat(data["{{%.morningTemp}}"]) - .;
    const nightTempCelsius = parseFloat(data["{{%.nightTemp}}"]) - .;

    // Calculate the arithmetic average in Celsius
    let averageTempCelsius = (dayTempCelsius + morningTempCelsius + nightTempCelsius) / ;

    // Round to two decimal places
    averageTempCelsius = parseFloat(averageTempCelsius.toFixed());

    // Return the result
    return {
        averageTempCelsius: averageTempCelsius
    };
}
```

- (  ) Webhook response: This node returns the result upon successful completion of the scenario:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fabeedf-ca--a-ca%FUntitled.png?table=block&id=d-a--bfb-deaf&cache=v)

The result of this scenario is a response with the processed data from the three global variables, for example: _The average temperature is . degrees._

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdad-ae-b-af-deafd%FUntitled.png?table=block&id=d-a-e-bf-ebaacd&cache=v)