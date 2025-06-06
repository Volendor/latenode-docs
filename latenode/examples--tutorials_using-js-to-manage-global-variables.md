---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/using-js-to-manage-global-variables/DTZDaghiCPvzPxzb"
title: "Using JS to manage global variables – Latenode | Help Center"
---

 Using JS to manage global variables

Managing variables dynamically with JavaScript.




[Link to the scenario template](https://app.latenode.com/shared-scenarios/bacdbbddca)

As an example of using JavaScript to manage global variables, let's create a scenario in which:

- several global variables of different types are created;

- global variables created not today are deleted;

- a list of globally created variables today and numerical variables with values greater than  is returned;

- the value of a text variable is returned.

To successfully run the scenario, you need to add  nodes:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fa-c-db--faaed%FUntitled.png?table=block&id=d-a--a-dedee&cache=v)

- (  ) Trigger on Run once nodeto initiate a one-time execution of the script immediately after clicking the Run Once button ;

- (  ) JavaScript node named Create a GV is used to create global variables of different types with code:

```
export default async function run({ execution_id, input, data, store }) {
    // Creating three numeric global variables
    await store.setGlobalVariable("GlobalVar_number", );
    await store.setGlobalVariable("GlobalVar_number", );
    await store.setGlobalVariable("GlobalVar_number", );

    // Creating global variables with types of string and JSON
    await store.setGlobalVariable("GlobalVarFromJs_string", "global var string value");
    await store.setGlobalVariable("GlobalVarFromJs_obj", {"key":"global var object value"});

    return {}; // Returning an empty object since no data needs to be returned
}
```

- (  ) JavaScript node named Delete a GV is used to delete global variables created not today with code:

```
export default async function run({ execution_id, input, data, store }) {
  // Get the list of global variables
  const list = await store.listGlobalVariables();

  // Get the current date in ISO format (without time)
  const today = new Date().toISOString().slice(, );

  // Create an array of promises to delete variables that were not created today
  const deletePromises = list
    .filter(variable => {
      // Convert the creation date of the variable to ISO format (without time)
      const creationDate = new Date(variable.created_at).toISOString().slice(, );
      // Return true if the variable was not created today
      return creationDate !== today;
    })
    .map(variable => {
      // Delete the global variable that was not created today
      return store.deleteGlobalVariable(variable.key);
    });

  // Execute all delete operations
  await Promise.all(deletePromises);

  // Return an empty object as the function should always return an object
  return {
  }
}
```

- (  ) JavaScript node named List of GV is used to obtain a list of the remaining global variables, including numeric variables with values greater than , with code:

```
export default async function run({ execution_id, input, data, store }) {
  // Retrieve the list of global variables
  const list = await store.listGlobalVariables();

  // Get the current date in ISO format (without time)
  const today = new Date().toISOString().slice(, );

  // Create an array for numeric variables with a value greater than 
  const numericVariablesOver = list.filter(variable => {
    return typeof variable.value === 'number' && variable.value > ;
  });

  // Create an array for variables of other types, created today
  const nonNumericVariablesCreatedToday = list.filter(variable => {
    const creationDate = new Date(variable.created_at).toISOString().slice(, );
    return typeof variable.value !== 'number' && creationDate === today;
  });

  // Combine the two arrays
  const variablesToReturn = [...numericVariablesOver, ...nonNumericVariablesCreatedToday];

  // Return the result
  return {
    variables: variablesToReturn
  };
}
```

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fca-da-e-e-bc%FUntitled.png?table=block&id=d-a-b-f-defced&cache=v)

- (  ) JavaScript node named Get a GV is used to obtain the value of a string global variable with code:

```
export default async function run({ execution_id, input, data, store }) {

 // Get Global Var
 const res_gv_str = await store.getGlobalVariable("GlobalVarFromJs_string")

 return {
  res_gv_str
 }
}
```

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fefddc-caab-fef-a-cffcd%FUntitled.png?table=block&id=d-a---fa&cache=v)

- (  ) Webhook response node to return the message "Ok" indicating the successful execution of the scenario.

As a result of the scenario, the output parameters of any of the JavaScript nodes and the execution of the specified actions with global variables. These parameters can be used if necessary in other scenarios or nodes.