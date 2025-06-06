---
url: "https://help.latenode.com/advanced-features/DTZDaggyNRLGe/headless-browser/kEYxeVWpuDhdGVgNBu"
title: "Headless browser – Latenode | Help Center"
---

 Headless browser

Automating web interactions and UI testing using a headless browser.


![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcae--f--fabba%FUntitled.png?table=block&id=d-a-c-aeef-fddebd&cache=v)

 Node Description

A Headless browser\- an action-type node that is required to configure interaction with a web browser using JavaScript code.

 You could use AI Custom Assistant to generate code for Headless browser

 [Headless Browser AI Assistant](https://chatgpt.com/share/efcae-c---cfeebad)

 Basic Example - Get the body content of a web page

```
// Open web page and return the content of <body> element
await page.goto('https://latenode.com');
const bodyContent = await page.evaluate(() => document.body.innerHTML);
return { bodyContent };
```

 Example \ - Wait for an HTML element before retrieving a web page's body content

Some web pages load content dynamically using JavaScript. In these cases, you need to wait for a specific selector to appear before proceeding using “await page.waitForSelector”, as shown in the example below

```
/
 Headless browser automation with Puppeteer
 Documentation: https://latenode.com/help/headless_browser
 AI assistant to write code for Headless Browser: https://latenode.com/help/headless_browser_assistant
/

// Basic example: Open web page and return the content of <body> element
await page.goto('https://latenode.com');
await page.waitForSelector('termly-consent-preferences');

// Wait for the body to load and extract its content
const bodyContent = await page.evaluate(() => document.body.innerHTML);

return {
    bodyContent
};
```

You could get a selector here:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fedfbd-e-c-abe-ddffecdff%FCleanShot_--_at_...png?table=block&id=d-a-c-ab-dfeedbdb&cache=v)

 Node Configuration

To configure the Headless browser node, you need to:

- Create the code in the Code window according to the requirements for interacting with the browser;

- If necessary, fill out the Proxy field block.

 Proxy

The configuration block with fields:

- Enter proxy address \- a field for entering the proxy address through which the request needs to be forwarded.

- Enter login\- a field for entering credentials for using the proxy.

- Enter password \- a field for entering credentials for using the proxy.

These fields are filled out in case access to the required website is restricted to the local network only.

 Data Processing Result

The output of the Headless Browser can be a string, numerical value, JSON object, and so on. The data processing result from the Headless Browser node is accessible for configuring parameters of other nodes.



It is recommended to wrap data in string format with quotation marks for further correct processing.

 Code

 Libraries

To interact with the browser using JavaScript, the [Puppeteer](https://pptr.dev/) library is used.

️

In large JavaScript scripts, it may be necessary to install [Puppeteer](https://pptr.dev/) locally on your computer ( [installation information](https://pptr.dev/installation)). To install JavaScript libraries on your computer, you need to set up [NodeJS](https://nodejs.org/) and [NPM](https://www.npmjs.com/).

 Inital Function `run`

The original function of the Headless browser node looks like this:

```
async function run({execution_id, input, data, page}) {
    return {

    }
}
```

The "page" parameter is the result of the call to [browser.newPage](https://pptr.dev/api/puppeteer.browsercontext.newpage/) [Puppeteer](https://pptr.dev/) library and has the corresponding [interface](https://pptr.dev/api/puppeteer.page/). All interactions with the browser page are performed using this parameter. There is no direct access to the [puppeteer](https://pptr.dev/) library or the browser from within this function .

️

Almost all operations with the `page` object are asynchronous. For convenience, the original `run` function is declared with the `async` keyword, allowing you to write code using [`async/await`](https://learn.javascript.ru/async-await) for better handling of asynchronous operations.

 Using the function `callWebhook`

In the code of the Headless Browser node, there is no direct access to libraries like [axios](https://axios-http.com/) or [fetch](https://learn.javascript.ru/fetch).

To make asynchronous API calls, you can use the `callWebhook` function. It is based on the [axios](https://axios-http.com/) library but with slightly reduced functionality.

️

With this function, you can make API requests only to incoming Trigger on Webhook nodes created within the Latenode platform. Requests to other domains will result in an error.

The interface of the `callWebhook(webhookUrl, options)` function is similar to the interface of [axios request](https://axios-http.com/docs/req_config) and consists of:

- `webhookUrl` \- the URL of an incoming Trigger on Webhook within the [Latenode](https://app.latenode.com/) platform;

- `options` \- an object with request options.

The response will be an object with an interface similar to [axios response](https://axios-http.com/docs/res_schema).

Here's an example of how to use the `callWebhook` function:

```
async function run({execution_id, input, data, page}) {
  const response = await callWebhook("https://webhook.latenode.com//dev/dbb-b-ae-aa-edcaaac", {
    method: "POST",
    data: {
        "some": "data"
    }
  });
  console.log(response.data);
  return {

  }
}
```

As a result, the logs will display the object returned by the script, which was invoked via the `callWebhook` function for the respective Trigger on Webhook.

 Examples

 Google Search Query

```
async function run({execution_id, input, data, page}) {
  await page.goto('https://google.com');
// Waiting for the appearance of the input field for entering the search query
  await page.waitForXPath('/html/body/div[]/div[]/form/div[]/div[]/div[]/div/div[]/input');
  const searchInput =
      (await page.$x('/html/body/div[]/div[]/form/div[]/div[]/div[]/div/div[]/input'))[];
// Entering the search query
  await searchInput.type('Hello world');

  const searchButton = (await page.$x('/html/body/div[]/div[]/form/div[]/div[]/div[]/center/input[]'))[];
// Pressing the search button
  await searchButton.click();
// Waiting for the appearance of the results page.
// Here, any XPath to an element
// that reliably appears after a successful search can be used
  await page.waitForXPath('//[@id="result-stats"]');

// Selecting all results
  const results = await page.$x('///a/h[@class]');

  const responseArray = [];
// Building the final array
  for (let result of results) {
      responseArray.push(await page.evaluate(el => ({ title: el.textContent }), result))
  }

// Returning the data
  return {
      responseArray
  }
}
```



An example script using the Headless Browser node can be found here.

 Possible problems

 UserAgent

Some websites may not open through a Headless Browser. In such cases, you should use the [page.setUserAgent](https://pptr.dev/api/puppeteer.page.setuseragent/) function.

```
await page.setUserAgent('Mozilla/. (X; Linux x_) AppleWebKit/. (KHTML, like Gecko) Chrome/... Safari/.');
```

 Can't find XPath

A Headless Browser opens the browser using the [puppeteer](https://pptr.dev/) library, which, in turn, opens a page with a specific `viewport`. Websites can have responsive designs, so there may be differences in layout between a local computer and the Headless Browser. You can change the page's `viewport` using the [page.setViewport](https://pptr.dev/api/puppeteer.page.setviewport/) function.

```
await page.setViewport({
  width: ,
  height: ,
});
```