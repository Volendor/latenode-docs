---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/using-the-headless-browser-node/DTZDaggqHTHConSp"
title: "Using the Headless Browser Node – Latenode | Help Center"
---

 Using the Headless Browser Node

Automating web interactions.




[Link to the scenario template](https://app.latenode.com/shared-scenarios/caadefbc)

As an example, let's create a scenario that:

- Generates currency names whose exchange rates need to be retrieved.

- Returns the exchange rates of these currencies against the British Pound.

We will use the [BoE](https://www.bankofengland.co.uk/boeapps/database/Rates.asp?Travel=NIxIRx&into=GBP) website as the data source. The web page provides a table of various currency exchange rates against the British Pound.

To set up this scenario, you need to create four nodes:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbfcda-b-e-d-bfacaa%FUntitled.png?table=block&id=d-a--beb-eeeb&cache=v)

- (  ) Trigger on Run once: This node initiates the scenario when you click the Run Once button;

- (  ) JavaScript: This node generates currency names in JSON format;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fead-c-b-bc-beba%FUntitled.png?table=block&id=d-a--bf-fccbaf&cache=v)

```
export default async function run({execution_id, input, data, store}) {
    return {
        C: "US",
        C: "Euro"
    };
}
```

- (  ) Headless browser: This node processes the web page and retrieves the required parameters using the code below. Use `const currencyCode` and `const currencyCode` to select parameters from the previous JavaScript node:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feed-fdd-ac-abe-fd%FUntitled.png?table=block&id=d-a-ca--fbeaaeef&cache=v)

```
async function run({execution_id, input, data, page}) {

// Retrieve currency codes from the data passed by node 
const currencyCode = data["{{$.C}}"]; // Variable for the first currency code
const currencyCode = data["{{$.C}}"]; // Variable for the second currency code

// Set User-Agent to mimic browser requests
await page.setUserAgent('Mozilla/. (X; Linux x_) AppleWebKit/. (KHTML, like Gecko) Chrome/... Safari/.');

// Navigate to the Bank of England's currency rates page
await page.goto('https://www.bankofengland.co.uk/boeapps/database/Rates.asp?Travel=NIxIRx&into=GBP');

// Wait for the currency rates table to load
await page.waitForXPath('//[@id="editorial"]/table');

// Find the element with the currency rate corresponding to the first code and get its value
const currencyElement = await page.waitForXPath(`//td[a[contains(@title, "${currencyCode}")]]/following-sibling::td[]`, {timeout: });
var currency = await currencyElement.evaluate(el => el.textContent.trim());

// Find the element with the currency rate corresponding to the second code and get its value
const currencyElement = await page.waitForXPath(`//td[a[contains(@title, "${currencyCode}")]]/following-sibling::td[]`, {timeout: });
var currency = await currencyElement.evaluate(el => el.textContent.trim());

// Construct a JSON object with the desired structure
const result = {
    C: `${currencyCode} - ${currency}`,
    C: `${currencyCode} - ${currency}`,
};

// Return this object
return result;
}
```

- (  ) Webhook response: This node formats the response for the scenario execution.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbcece-ea---cec%FUntitled.png?table=block&id=d-a-dd--cfcabb&cache=v)

The result of this scenario is a string with the exchange rate parameters of the British Pound according to the [BoE](https://www.bankofengland.co.uk/boeapps/database/Rates.asp?Travel=NIxIRx&into=GBP) table.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffeab-c-aa-fde-facdc%FUntitled.png?table=block&id=d-a--aef-fd&cache=v)