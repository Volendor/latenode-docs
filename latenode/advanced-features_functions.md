---
url: "https://help.latenode.com/advanced-features/DTZDaggyNRLGe/functions/DTZDageUopASKSyv"
title: "Functions – Latenode | Help Center"
---

 Functions

Overview of built-in functions available in Latenode.




You can use our GPT Assistant for help with Latenode operators:

 [Latenode Operators Assistant](https://chatgpt.com/g/g-dcbebf-latenode-operators-assistant)

It can guide you on writing expressions, using variables, filters, and building logic inside your scenarios.

 Algorithm

Operators in this group ensure the execution of logical operations with operands and output the result. The outcome of these operations varies.

 Result

 If

t outputs a specified value when conditions are met or a different value if the conditions are not met.

![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Fa-adb-ee-ac-ffeb%FUntitled.png?table=block&id=d-a-b-aa-ecbf&cache=v)

- Result of the expression: Specified value.

- Example: If .ValueSV = , then true. If .ValueSV = , then false.

 ()

This operator provides logical and mathematical isolation for any expressions.

- Result of the expression: -.

 not

This operator provides logical negation of specified/received boolean values.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fd-a-f-a-dcce%FUntitled.png?table=block&id=d-a---dafc&cache=v)

- Result of the expression: Negation of the value.

- Example: If .ValueSV is TRUE, then FALSE

 if empty

It outputs a specified value if the operand is absent (null), and the value of the operand if it is present.

![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Fdc-aa-ac-f-aaadff%FUntitled.png?table=block&id=d-a-c-af-eaefe&cache=v)

- Result of the expression: The value.

- Example: If .ValueSV is absent (null), then . If .ValueSV = , then .

 empty

This operator checks for the absence of values in the operand.

![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Ff--ac-f-bcecc%FUntitled.png?table=block&id=d-a-f-a-cdfefd&cache=v)

- Result of the expression: TRUE/FALSE.

- Example: If .ValueSV is absent (null), then TRUE. If .ValueSV = "May", then FALSE.

 contains

This operator checks for the presence of selected characters in a string, number, or array (including an array of boolean values), regardless of their location.

![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Fbda-f-f-f-bcdce%FUntitled.png?table=block&id=d-a--af-caed&cache=v)

- Result of the expression: TRUE/FALSE.

- Example: If .ValueSV = "Hello Latenode", then TRUE. If .ValueSV = "Hi Latenode", then FALSE.

 starts with

This operator checks for the presence of selected characters at the beginning of a string or number.

![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Fbaf--ab-bc-daef%FUntitled.png?table=block&id=d-a-c-ba-dfcbdb&cache=v)

- Result of the expression: TRUE/FALSE.

- Example: If .ValueSV = "June", then TRUE. If .ValueSV = "May", then FALSE. If .ValueSV = "", then FALSE.

 ends with

This operator checks for the presence of selected characters at the end of a string or number.

![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Fdeee-a-c-a-bbcf%FUntitled.png?table=block&id=d-a--aa-daff&cache=v)

- Result of the expression: TRUE/FALSE.

- Example: If .ValueSV = "June", then TRUE. If .ValueSV = "May", then FALSE. If .ValueSV = "", then FALSE.

 matches pattern

This operator checks for a match between the operand and a regular expression.

![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Fdba---c-bce%FUntitled.png?table=block&id=d-a---eefce&cache=v)

- Result of the expression: TRUE/FALSE.

- Example: If .ValueSV = "Abc", then TRUE. If .ValueSV = , then FALSE.

 to lower

This operator converts a string to lowercase.

![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Faf-a-f--efcebd%FUntitled.png?table=block&id=d-a-cf-d-ccea&cache=v)

- Result of the expression: Lowercase text.

- Example: If .ValueSV = 'TEST', then test.

 to upper

This operator converts a string to uppercase.

![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Fcdf--ab--dacbb%FUntitled.png?table=block&id=d-a--fe-cdcd&cache=v)

- Result of the expression: Uppercase text.

- Example: If .ValueSV = 'test', then TEST.

 length

This operator outputs the number of characters in a string or the number of values in an array.

![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Faaedfe-c-d--aade%FUntitled.png?table=block&id=d-a--f-deebb&cache=v)

- Result of the expression: A number.

- Example: If .ValueSV = 'test', then .

 get

This operator outputs a JSON parameter or an array element.

- Result of the expression: Parameter.

- Example: The value of the parameter ValueWH from the provided JSON. For example, if ValueWH = , then .

![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Fdea-c-f-de-aecf%FUntitled.png?table=block&id=d-a-a-b-ccbe&cache=v)

- Example: The value of the element in the provided array ValueWH with index . For instance, if ValueWH = , then .

![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Fac-d--bbb-bfbde%FUntitled.png?table=block&id=d-a--ac-ed&cache=v)

 switch

This operator checks if the expression matches the selected operand and outputs a value when a match is found. The operand can be a boolean value, a string, or a number.



The function operator the result corresponding to the first matching value.

![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Feba-c-c-bf-aea%FUntitled.png?table=block&id=d-a---dad&cache=v)

- Result of the expression: Value.

- Example: If .ValueSV = 'A', then . If .ValueSV = 'Abc', then .

 replace

This operator replaces selected values in a string or number with specified values.

![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Fcffcc--dd-ad-c%FUntitled.png?table=block&id=d-a-a-ba-cbaeeb&cache=v)

- Result of the expression: Text or number with character replacement.

- Example: If .ValueSV = 'Hi Latenode', then 'Test Latenode'.

 trim

This operator removes spaces at the beginning and end of a string.

![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Ffce-ed--bf-afca%FUntitled.png?table=block&id=d-a--a-dae&cache=v)

- Result of the expression: Text without spaces.

- Example: If .ValueSV = ' Hi Latenode ', then 'Hi Latenode'.

 substring

This operator outputs a portion of a string or number from a selected starting position not inclusive to a chosen ending position, inclusive.

![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Fdfbc-b--b-cda%FUntitled.png?table=block&id=d-a-a--eedbee&cache=v)

- Result of the expression: A portion of text.

- Example: If .ValueSV = 'Latenode', then 'a'.

 indexOf

This operator provides the position of the first occurrence of a search value in a string or number.



This operator returns "-" if the search value is not found.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdba-ea-ff-bb-fde%FUntitled.png?table=block&id=d-a-d-a-dcfd&cache=v)

- Result of the expression: A portion of text.

- Example: If .ValueSV = 'Latenode', then .