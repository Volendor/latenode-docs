---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/examples-of-interaction-with-other-apps-/DTZDaggfkHoHUq"
title: "Examples of interaction with other apps  – Latenode | Help Center"
---

 Examples of interaction with other apps

Use cases for integrating Latenode with external applications.


Table of contents:

. Using Google Group nodes

. Uploading Files to Google Drive

. Using the Add Multiple Rows node

. Using JS for file management on FTP server

. Using a Wait node to send Telegram messages sequentially

. Processing Google disk files using the Iterator node

 \. Using Google Group nodes



[Link to the scenario template](https://app.latenode.com/shared-scenarios/afcedcacae)

As an example of using Google Group nodes, let's create a scenario that results in:

- retrieving a list of documents from a specific folder in Google Drive and then entering the names of the retrieved documents into a Google Sheets List on one of two sheets depending on the document name;

- generating a response "OK" to notify of successful completion.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fcadbd-afd-ef-aca-cd%FUntitled.png?table=block&id=d-a---ccde&cache=v)

To enable the successful execution of the scenario, we need to add  nodes and two routes with conditions:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ff-c-ba-d-afedda%FUntitled.png?table=block&id=d-a--be-dfeaac&cache=v)

- (  ) A Trigger on Run once node to initiate a single scenario run immediately after clicking the Run Once button;

- (  ) A List Files node that provides information about the documents in the "Test" folder on Google Drive in the form of an array. To configure the ListFiles node correctly, you need to create a authorization, choose Google Drive, and select the desired folder:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Ffe-ce-ffc-f-bddb%FUntitled.png?table=block&id=d-a--a-dcf&cache=v)

- (  ) Iterator node, containing a sequence of values from the ListFiles node's array;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fbceb-c-ac-ac-acfee%FUntitled.png?table=block&id=d-a-a-bc-fcacabe&cache=v)

- (  ) SetVariables node, defining the variable Name. The value of the variable is the name of one of the documents (value of the name field) passed in the Iterator node's array ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fd-b-b-afc-abeeccc%FUntitled.png?table=block&id=d-a--af-febbd&cache=v)

- (  ) The first Add Single Row Node, adding a row to a Google spreadsheet. To configure the Add Single Row node correctly, you need to:

create a authorization;

select the necessary parameters (Google Drive, folder, Google spreadsheet, sheet in the spreadsheet - Sheet);

content of the added cell: the value of the variable Name from the SetVariables node.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fbf-d-e-f-fdda%FUntitled.png?table=block&id=d-a-f-aff-fdcb&cache=v)

- (  ) Route between the SetVariables node and the first Add Single Row node "Sales" with a filter condition {{contains(.Name;"Sale")}};

- (  ) The second Add Single Row Node, adding a row to a Google spreadsheet. To configure the Add Single Row node correctly, you need to:

create a authorization;

Select the necessary parameters (Google Drive, folder, Google spreadsheet, sheet in the spreadsheet - Sheet).

Content of the added cell: the value of the variable Name from the SetVariables node

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fdffa--e-aff-afecaa%FUntitled.png?table=block&id=d-a-ea-bce-ebc&cache=v)

- (  ) Route between the SetVariables node and the second Add Single Row node "Stocks" with a filter condition {{contains(.Name;"Stock")}};

- (  ) Webhook Response node, returning the response "OK" in case of successful completion of the scenario.

The outcome of the scenario will be:

- The name of the file Report Sale on the Sheet of the Google spreadsheet List:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fbb-e-dc-bbc-edadac%FUntitled.png?table=block&id=d-a--ac-fbea&cache=v)

- The name of the file Report Stock on the Sheet of the Google spreadsheet List:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fbe-fe-c-c-adfdc%FUntitled.png?table=block&id=d-a---fbcc&cache=v)

- Generating a response "OK" to notify of successful completion.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcaf-e-ff-db-eaf%FUntitled.png?table=block&id=d-a-c-bd-fbbbf&cache=v)

 \. Uploading Files to Google Drive



[Link to the scenario template](https://app.latenode.com/shared-scenarios/bbdfaaccf)

As an example, let's create a scenario where the outcome is the upload of files to a specific folder on Google Drive and subsequently obtaining a list of the names and identifiers of the files in that folder.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdbda-f-a-aa-eb%FUntitled.png?table=block&id=d-a--afc-ccaedccfb&cache=v)

To successfully run this scenario, you need to add four nodes:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fe--ab-c-cdfd%FUntitled.png?table=block&id=d-a--b-caebcf&cache=v)

- (  ) A Trigger on Webhook node with a URL to which a POST request is sent with a Form-data body containing the file _TestJson_;

- (  ) An Upload File node that uploads the provided file to a Google Drive folder. To configure the Upload File node correctly, you need to create a authorization, choose Google Drive, and select the desired folder:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffbbc-bbf--ca-ebaacab%FUntitled.png?table=block&id=d-a-ac-dfc-eedcdd&cache=v)

- (  ) A ListFiles node that provides information about the documents in the Google Drive folder as an array. To configure the ListFiles node correctly, create a authorization, choose Google Drive, select the target folder, and specify file parameters:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fafc-c--d-fbebc%FUntitled.png?table=block&id=d-a-ea-ff-eccf&cache=v)

- (  ) A Webhook Response node that returns a response with an array of documents in case of a successful scenario completion.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%F-a-b-ad-fadbde%FUntitled.png?table=block&id=d-a--a-cdedd&cache=v)

The result of running the scenario will be an array of document parameters.

Upon the initial run and in an initially empty Latenode folder:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdee-ee-e-bae-ca%FUntitled.png?table=block&id=d-a-d-f-ccff&cache=v)

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fafabb-ec-e-ab-eff%FUntitled.png?table=block&id=d-a-a-ab-ffdcc&cache=v)

```
[\
    {\
        "id": "MT_dJdfGlzTNtmrNACqmivPRBV_Ef",\
        "name": "TestJson.json"\
    }\
]
```

Upon the second run:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fd--a-aab-dbabbac%FUntitled.png?table=block&id=d-a--af-dcba&cache=v)

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdeffd-ff--fe-efc%FUntitled.png?table=block&id=d-a--acf-ecbabc&cache=v)

```
[\
    {\
        "id": "S-zdDRmHAoaZnjAsEkqOofJkisX",\
        "name": "TestJson.json"\
    },\
    {\
        "id": "MT_dJdfGlzTNtmrNACqmivPRBV_Ef",\
        "name": "TestJson.json"\
    }\
]
```

 \. Using the Add Multiple Rows node



[Link to the scenario template](https://app.latenode.com/shared-scenarios/afccedcac)

To illustrate, let's create a scenario that results in transferring the representation of Airtable to a Google Sheet. The successful execution of the scenario requires adding  nodes.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ff-c-b-ed-ddefb%FUntitled.png?table=block&id=d-a-e-aa-efeddf&cache=v)

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fceacb---a-ddaeb%FUntitled.png?table=block&id=d-a--aa-fbaab&cache=v)

- (  ) A Trigger on Run once node to initiate a single scenario run immediately after clicking the Run Once button;

- (  ) A List Records in View node retrieves an array of rows from the selected view. To configure it correctly, establish a authorization, choose the relevant database, and view. The node outputs an array with information about each row. In addition to necessary data, row information includes the creation date and identifier;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbc-e-a-afdc-cb%FUntitled.png?table=block&id=d-a-e-ca-daabe&cache=v)

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fb-b-d-ab-afedae%FUntitled.png?table=block&id=d-a--b-dacfc&cache=v)

- (  ) An Iterator node contains a sequence of values from the array of the List Records in View node ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbbadfa-a-b-a-adddccfd%FUntitled.png?table=block&id=d-a-d-ac-fcda&cache=v)

- (  ) A first JavaScript node processes the received information about the view's row. During processing, the required information `data["{{.value.fields}}"]` is transformed into an array of string values separated by commas.

```
export default async function run({execution_id, input, data}) {
    // Parse the JSON string from the data of node  (Iterator)
    let record = JSON.parse(data["{{.value.fields}}"]);

    // If the record exists, we transform it into an array of values, otherwise we return an empty array
    let recordArray = record ? Object.values(record) : [];

    // Create a new array
    let newArray = [];

    // We transform each value from recordArray into a string, wrap it in double quotes,
    // join all the values into one string separated by commas, and add it to newArray
    newArray.push(recordArray.map(value => `"${value}"`).join(", "));

    // Return the new array
    return {
        newArray
    }
}
```

The node's output is an array in the desired format:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcbda--bc-bcf-ecbfcef%FUntitled.png?table=block&id=d-a-d-bc-fa&cache=v)

- (  ) A SetVariables node constructs a single array from the multiple arrays output by the previous JavaScript node. The output consists of an array of arrays.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcbbbef-bd-bc-abe-daebe%FUntitled.png?table=block&id=d-a--b-da&cache=v)

- (  ) A second JavaScript node processes the array of arrays into the desired format with the following code:

```
export default async function run({execution_id, input, data}) {
    // get the Arr array from data
    const Arr = JSON.parse(data["{{_.Arr}}"]);

    // convert the entire array to a string
    let result = JSON.stringify(Arr);

    // remove escape characters
    result = result.replace(/\\/g, '');

    // replace "" with "
    result = result.replace(/""/g, '"');

    return {
        result: result
    }
}
```

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fc-a-ead-e-cacd%FUntitled.png?table=block&id=d-a-ac-bb-fcefaf&cache=v)

- An Add Multiple Rows node records the view's rows into a Google Sheet. To configure the node, set up the authorization. In the Row Values field, place the output of the previous JavaScript node ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fddab-d-ab-bee-cabf%FUntitled.png?table=block&id=d-a--abcf-dc&cache=v)

- (  ) A Webhook Response node returns the response "Ok" upon successful execution of the scenario.

The result of executing the scenario is the copying of the selected view from the Airtable database to a Google Sheet.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcdaaf--c-aea-c%FUntitled.png?table=block&id=d-a--a-dadc&cache=v)

 \. Using JS for file management on FTP server



[Link to the scenario template](https://app.latenode.com/shared-scenarios/baabfcdbafbaa)

As an example of using the JavaScript node to manage files on an FTP server, let's create a scenario in which the following steps are sequentially executed:

- Retrieve a list of files from a specific directory on the FTP server.

- Retrieve a specific file, including its content, from the FTP server.

- Upload a test file to the FTP server.

- Delete the test file from the FTP server.



Each of the presented nodes can be used independently in any other scenarios. Some script parameters (file content or file path) are specified as static values but can also be parameters from previous nodes or values of global variables.

To successfully implement the scenario, it is necessary to add  nodes:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffffcdb--e-af-ccbecbf%FUntitled.png?table=block&id=d-a--f-dcdeafd&cache=v)

- (  ) Trigger on Run once nodeto initiate a one-time execution of the script immediately after clicking the Run Once button ;

- (  ) JavaScript node named List Files from FTP for retrieving a list of files with code:

```
import FTP from 'promise-ftp';

export default async function run({execution_id, input, data, store}) {
    const ftp = new FTP();
    try {
        await ftp.connect({
      host: 'You_host', // Replace with your FTP server's host
      user: 'You_login',        // Replace with your FTP username
      password: 'You_password'     // Replace with your FTP password
        });

        // Change to the directory you want to list files from, if needed
        await ftp.cwd('/htdocs');

        // Get the list of files
        let fileList = await ftp.list();

        // Filter out hidden files and folders
        fileList = fileList.filter(file => !file.name.startsWith('.'));

        // Disconnect from the FTP server
        await ftp.end();

        // Return the file list
        return {
            fileList
        };
    } catch (error) {
        // If there's an error, disconnect and throw the error
        await ftp.end();
        throw error;
    }
}
```

- (  ) JavaScript node named Get File from FTP for obtaining a specific file and its content with code:

```
import FTP from 'promise-ftp';

export default async function run({ execution_id, input, data, store }) {
  const ftp = new FTP();
  try {
    await ftp.connect({
      host: 'You_host', // Replace with your FTP server's host
      user: 'You_login',        // Replace with your FTP username
      password: 'You_password'     // Replace with your FTP password
    });

    // Defining the path to the file.
    // The parameter can be obtained from the output parameters of the previous nodes
    const remoteFilePath = "/htdocs/index.html";
    const stream = await ftp.get(remoteFilePath);

    // Read the stream and convert it to a string
    let fileContent = '';
    for await (const chunk of stream) {
      fileContent += chunk.toString();
    }

    // Disconnect from the FTP server
    await ftp.end();

    // Extract the filename and extension
    const filename = remoteFilePath.replace(/^.[\\\/]/, ''); // Remove directory path if present
    const extension = filename.split('.').pop();

    return {
      content: fileContent,
      extension: extension,
      filename: filename
    };
  } catch (error) {
    // If there's an error, disconnect and throw the error
    await ftp.end();
    throw error; // The error will be handled by the platform
  }
}
```

- (  ) JavaScript node named Upload file to FTP for uploading a file with code:

```
import FTP from 'promise-ftp';

export default async function uploadFile({ execution_id, input, data, store }) {
  const ftp = new FTP();
  try {
    await ftp.connect({
      host: 'You_host', // Replace with your FTP server's host
      user: 'You_login',        // Replace with your FTP username
      password: 'You_password'     // Replace with your FTP password
    });

    // Example: HTML content to upload
    const htmlContent = "<html>...</html>"; // Replace this with your actual HTML content

    // Convert the HTML content to a buffer
    const buffer = Buffer.from(htmlContent, 'utf-');

    // Defining the path to the file.
    // The parameter can be obtained from the output parameters of the previous nodes
    const remoteFilePath = '/htdocs/index.html';

    // Upload the buffer to the FTP server
    await ftp.put(buffer, remoteFilePath);

    // Disconnect from the FTP server
    await ftp.end();

    return {
      message: `File uploaded successfully as ${remoteFilePath}`
    };
  } catch (error) {
    // If there's an error, disconnect and throw the error
    await ftp.end();
    throw error; // The error will be handled by the platform
  }
}
```

- (  ) JavaScript node named Delete file from FTP for deleting a file with code:

```
import FTP from 'promise-ftp';

export default async function deleteFile({ execution_id, input, data, store }) {
  const ftp = new FTP();
  try {
    await ftp.connect({
      host: 'You_host', // Replace with your FTP server's host
      user: 'You_login',        // Replace with your FTP username
      password: 'You_password'     // Replace with your FTP password
    });

    // Defining the path to the file.
    // The parameter can be obtained from the output parameters of the previous nodes
    const remoteFilePath = '/htdocs/index.html';

    // Delete the file from the FTP server
    await ftp.delete(remoteFilePath);

    // Disconnect from the FTP server
    await ftp.end();

    return {
      message: `File ${remoteFilePath} deleted successfully`
    };
  } catch (error) {
    // If there's an error, disconnect and throw the error
    await ftp.end();
    throw error; // The error will be handled by the platform
  }
}
```

- (  ) Webhook response node to return the message "Ok" indicating the successful execution of the scenario.

The output parameters of any of the JavaScript nodes serve as the result of the script. These parameters can be utilized as needed in other scenarios or nodes.

 \. Using a Wait node to send Telegram messages sequentially



[Link to the scenario template](https://app.latenode.com/shared-scenarios/eeaadc)

As an example of using the Wait node, let's create a scenario that results in the sequential sending of two pre-known messages. To successfully execute the scenario, several nodes need to be added:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdabf-ee-a-dd-abebe%FUntitled.png?table=block&id=d-a-f-b-caadf&cache=v)

- (  ) Trigger on Webhook node, to trigger the scenario and receive data via POST about two messages and the date of sending the first message;

```
{
	"Date": "--T::Z",
	"Message": "Message to be sent at a specified time",
	"Message": "Second message to be sent after a period of time after the first"
}
```

- (  ) Wait node, to configure the time of sending the first message. The Date and Time field can be set to the `Date` parameter passed to the Webhook node. To fill in the field with a parameter from the previous node, switch the input format to Substitution;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbe-ee-b-f-fafdceee%FUntitled.png?table=block&id=d-a--bd-ffcddaa&cache=v)

- (  ) Send a Text Message or Reply node, to send the first message to the Telegram chat. The Text field can be set to the `Message` parameter passed to the Webhook node ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbefe-d-cc-c-aecbc%FUntitled.png?table=block&id=d-a---de&cache=v)

- (  ) Wait node, to configure the time of sending the second message. The second message can be sent, for example,  minute and  seconds after sending the first message;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ff-ae--bfe-abeffb%FUntitled.png?table=block&id=d-a--a-fbbfdd&cache=v)

- (  ) Send a Text Message or Reply node, for sending the second message to the Telegram chat. The Text field can be set to the `Message` parameter passed to the Webhook node;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fffe--f-d-defc%FUntitled.png?table=block&id=d-a-a-db-dcbac&cache=v)

- (  ) Webhook response node, for sending a message about the successful execution of the scenario.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbc-e-a-b-bd%FUntitled.png?table=block&id=d-a-d--eaa&cache=v)

The result of executing the scenario includes:

- Messages in the Telegram chat sent according to the settings of the Wait nodes;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffe-ee--ac-ebbcde%FUntitled.png?table=block&id=d-a---edeab&cache=v)

- A response generated by the Webhook response node ;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffe-d--ae-dee%FUntitled.png?table=block&id=d-a-e--ddcb&cache=v)



During the waiting period configured by the Wait node, the scenario is in a Pause status.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fee-cb-dc--aaea%FUntitled.png?table=block&id=d-a-a-ae-cedd&cache=v)

 \. Processing Google disk files using the Iterator node



[Link to the scenario template](https://app.latenode.com/shared-scenarios/afcdbefac)



You can watch a training video [here](https://www.youtube.com/watch?v=qlNoPncjg).

As an example of using the Iterator node, let's create a scenario that results in an array of document names located in the Latenode Google Drive folder.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcadc-b-fc--adb%FUntitled.png?table=block&id=d-a-ba--cdaaebc&cache=v)

To successfully run the script, you need to add  nodes:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fea-e-aa-a-df%FUntitled.png?table=block&id=d-a--bef-dbfdf&cache=v)

- (  ) A Trigger on Run once node to initiate a single scenario run immediately after clicking the Run Once button;

- (  ) A ListFiles node that provides information about the documents located in the Latenode Google Drive folder in the form of an array. To configure the ListFiles node correctly, you need to create a authorization, select Google Drive, and choose the desired folder:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbc-bd-cc-ab-dacadbcd%FUntitled.png?table=block&id=d-a--a-edcbd&cache=v)

- (  ) An Iterator node containing a sequence of values from the ListFiles node;

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faadb-d-d-bdc-ceddb%FUntitled.png?table=block&id=d-a--ee-ddedac&cache=v)

- (  ) A SetVariables node that collects a variable as an array of document names. When configuring the SetVariables node, it is important to correctly specify the variable collection algorithm using the " add" operator:

The operand of the expression will automatically be the specified variable;

The expression's value should be selected as the "name" value from the Iterator node .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feadb--ba-b-dcbbaab%FUntitled.png?table=block&id=d-a-b-bc-cbdf&cache=v)

- (  ) A Webhook Response node that returns the specified variable.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdd--f-ab-fa%FUntitled.png?table=block&id=d-a--ef-caddfdde&cache=v)

The result of running the script will be an array of values:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffdb--f-aea-aecbc%FUntitled.png?table=block&id=d-a-e--ca&cache=v)