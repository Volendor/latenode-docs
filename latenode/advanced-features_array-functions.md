---
url: "https://help.latenode.com/advanced-features/DTZDaggyNRLGe/array-functions/DTZDaggaWDwaDFvQhrK"
title: "Array Functions – Latenode | Help Center"
---

 Array Functions

Processing and modifying arrays dynamically within workflows.




You can use our GPT Assistant for help with Latenode operators:

 [Latenode Operators Assistant](https://chatgpt.com/g/g-dcbebf-latenode-operators-assistant)

It can guide you on writing expressions, using variables, filters, and building logic inside your scenarios.

 Algorithm

Operators in this group provide the ability to perform operations on arrays and array elements.



Elements of the array can be strings, numbers, or boolean values.

 Result

 add

This operator adds a value to the specified variable to create an array. See  Scenario Example Using SetVariables.

- Result of the expression: Value in the array.

 join

It concatenates all the array elements into a string, adding the specified delimiter between each array element.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fabfe-fde--bd-dacf%FUntitled.png?table=block&id=d-a---fdfefcaa&cache=v)

- Execution Result: text with the specified delimiter.

- Example: If \_.Array = \[,,,,\], then "....".

 slice

Returns a modified array containing the specified elements from the provided array.



The specified numbers are the ordinal numbers of the array elements. In the example below, it returns elements from the zeroth (exclusive) to the first (inclusive) element. The ending number may be omitted, in which case, it will return all elements of the array after the initial number.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fdd--f-f-fbe%FUntitled.png?table=block&id=d-a--cd-ebbdc&cache=v)

- Execution Result: an array of values.

- Example: If .Body = \[{"Value": "Hi"}, {"Value": "Latenode"}\], then \[{"Value": "Hi"}\].

 merge

Merges two or more passed arrays into one array.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fdfab-fb--bec-bc%FUntitled.png?table=block&id=d-a-b-be-fbeeb&cache=v)

- Execution Result: an array of values.

- Example: If .Body\[\] = \[{"Value": }, {"Value": }\] and .Body\[\] = \[{"Value": }, {"Value": }\], then \[{"Value": }, {"Value": }, {"Value": }, {"Value": }\].

 map

Returns an array containing the desired values of the given complex array. Can be used for filtering values.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fed-a--afd-baeddbea%FUntitled.png?table=block&id=d-a-b-ae-edac&cache=v)

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fff--ad-a-ff%FUntitled.png?table=block&id=d-a-d-cb-efdcaee&cache=v)

- Execution Result: an array of found values.

- Example:

Input data:

```
[\
	{\
		"Name": "Kate",\
		"Address": "Tokyo",\
		"Age": \
	},\
	{\
		"Name": "Anna",\
		"Address": "Seoul",\
		"Age": \
	},\
	{\
		"Name": "Lisa",\
		"Address": "Beijing",\
		"Age": \
	}\
]
```

Result:

```
[\
	,\
	,\
	\
]
```

 sort

Returns an array containing values of the given array sorted in the desired order. Sorting options available:

- asc \- in ascending order;

- desc \- in descending order;

- asc ci \- in ascending order, case-insensitive;

- desc ci \- in descending order, case-insensitive.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Ffd-f-b-cc-caee%FUntitled.png?table=block&id=d-a--bf-f&cache=v)

- Execution result: an array of sorted values.

- Example: If .Body = \[{ "Value": }, {"Value": },{ "Value": }, {"Value": }\], then \[{ "Value": }, {"Value": },{ "Value": }, {"Value": }\]

 deduplicate

Removes duplicate values from the given array and returns an array with unique values.

- Execution result: an array of unique values.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fcab-c--ace-bfbaac%FUntitled.png?table=block&id=d-a-d-b-fbeaf&cache=v)

- Example:

Input data:

```
[\
	{\
		"Name": "Kate",\
		"Age": \
	},\
	{\
		"Name": "Anna",\
		"Age": \
	},\
	{\
		"Name": "Lisa",\
		"Age": \
	},\
	{\
		"Name": "Lisa",\
		"Age": \
	},\
	{\
		"Name": "Anna",\
		"Age": \
	}\
]
```

Result:

```
[\
	{\
		"Age": ,\
		"Name": "Kate"\
	},\
	{\
		"Age": ,\
		"Name": "Anna"\
	},\
	{\
		"Age": ,\
		"Name": "Lisa"\
	},\
	{\
		"Age": ,\
		"Name": "Anna"\
	}\
]
```

 distinct

Removes duplicates from the given array and returns an array with unique values. All duplicates are removed based on the specified key, except for the first found value.

- Execution result: an array of unique values.

- Example :

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Fdfbfb-ae--bac-aae%FUntitled.png?table=block&id=d-a--b-fcbce&cache=v)

Input data:

```
[\
	{\
		"Name": "Kate",\
		"Age": \
	},\
	{\
		"Name": "Anna",\
		"Age": \
	},\
	{\
		"Name": "Lisa",\
		"Age": \
	},\
	{\
		"Name": "Lisa",\
		"Age": \
	},\
	{\
		"Name": "Anna",\
		"Age": \
	}\
]
```

Result:

```
[\
	{\
		"Age": ,\
		"Name": "Kate"\
	},\
	{\
		"Age": ,\
		"Name": "Anna"\
	}\
]
```

- Example :

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%F-fbed-e-b-fefafd%FUntitled.png?table=block&id=d-a-dc-ab-dbccdac&cache=v)

Input data:

```
[\
	{\
		"Name": "Kate",\
		"Age": \
	},\
	{\
		"Name": "Anna",\
		"Age": \
	},\
	{\
		"Name": "Lisa",\
		"Age": \
	},\
	{\
		"Name": "Lisa",\
		"Age": \
	},\
	{\
		"Name": "Anna",\
		"Age": \
	}\
]
```

Result:

```
[\
	{\
		"Age": ,\
		"Name": "Kate"\
	},\
	{\
		"Age": ,\
		"Name": "Anna"\
	},\
	{\
		"Age": ,\
		"Name": "Lisa"\
	}\
]
```

- Example :

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Fccfdb-c-b-b-fdeccfd%Ffeb-c-f-a-aee%FUntitled.png?table=block&id=d-a-de-c-eecdeac&cache=v)

Input data:

```
[\
	{\
		"Name": "Kate",\
		"Age": \
	},\
	{\
		"Name": "Anna",\
		"Age": \
	},\
	{\
		"Name": "Lisa",\
		"Age": \
	},\
	{\
		"Name": "Lisa",\
		"Age": \
	},\
	{\
		"Name": "Anna",\
		"Age": \
	}\
]
```

Result:

```
[\
	{\
		"Age": ,\
		"Name": "Kate"\
	},\
	{\
		"Age": ,\
		"Name": "Anna"\
	},\
	{\
		"Age": ,\
		"Name": "Lisa"\
	},\
	{\
		"Age": ,\
		"Name": "Anna"\
	}\
]

```