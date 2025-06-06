---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/deepseek-coder-b-instruct-awq/kEYxeVUQbhWBUSyU"
title: "deepseek-coder-.b-instruct-awq – Latenode | Help Center"
---

 deepseek-coder-.b-instruct-awq

AI model specialized in solving mathematical problems.


 Model Description

The `@hf/thebloke/deepseek-coder-.b-instruct-awq` model includes two nodes:

- deepseek-coder-.b-instruct-awq Prompt (preview)

- deepseek-coder-.b-instruct-awq With History (preview)



Model ID: `@hf/thebloke/deepseek-coder-.b-instruct-awq`. Deepseek Coder is a set of language models trained on a large volume of code and natural language in English and Chinese. Each model is trained from scratch on  trillion tokens, with % of the data being code and % being natural language.

  

The model specializes in tasks related to programming and development, but can also handle natural language in English and Chinese. The model can be useful for analyzing code, generating comments and hints, and interacting with developers in English and Chinese.

\. Answering programming related questions: The model is capable of answering user questions related to various aspects of programming, such as syntax, algorithms, libraries, etc.

\. Code Explanation and Interpretation: The model can explain and interpret existing code, helping to better understand its logic and functionality.

  

 Example of launching a node

Let's run the deepseek-coder-.b-instruct-awq With History (preview) node to process the text and generate a response with parameters:

- Dialogue History:

```
[{"role":"system","content":"Write comments and provide code with comments"}]
```

- User Prompt - Write comments on the code:

```
def calculate_sum(numbers):
total = 
for num in numbers:
total += num
return total

input_numbers = [, , , , ]
result = calculate_sum(input_numbers)
print("sum:", result)
```

- Max Tokens (Answer Size) \- .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffb-cbe-f-bfe-afa%FUntitled.png?table=block&id=d-a--ddc-caadfde&cache=v)

The output of the node execution is JSON:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fe-dff-a-b-dad%FUntitled.png?table=block&id=d-a-a-a-fb&cache=v)

- with a response to the `"response"` request;

- with the status of the action `"success": true`.

JSON (parameter `"response"` )

````
Sure, here is the code with comments:

```python
 Define a function named calculate_sum that takes a list of numbers as an argument
def calculate_sum(numbers):
     Initialize a variable named total to 
    total = 
     Loop through each number in the input list
    for num in numbers:
         Add the current number to the total
        total += num
     Return the total sum
    return total

 Define a list of numbers
input_numbers = [, , , , ]

 Call the calculate_sum function with the input_numbers list and store the result in a variable named result
result = calculate_sum(input_numbers)

 Print the result
print("sum:", result)
```

This code calculates the sum of all numbers in the `input_numbers` list by calling the `calculate_sum` function. The result is then printed to the console.

````