---
url: "https://help.latenode.com/advanced-features/DTZDaggyNRLGe/ai/DTZDaggnCKbkKsuk"
title: "AI – Latenode | Help Center"
---

 AI

Using AI-driven logic within automation workflows.


The AI operators include a single operator - askAI(). The operand should be the user's request to the AI.

In addition to text, the request can use existing variables or global variables or output parameters of previous nodes, enclosed in symbols according to the pattern `"+Variable/Data+"` .



The operator can be used to configure nodes by adding it to node fields or to set conditions in the Condition field.

️

When using artificial intelligence (AI), follow these precautions. Provide clear and understandable instructions to AI to avoid misunderstandings and incorrect results. Verify the accuracy of the AI's responses, especially if they have serious consequences or are critical for decision-making. Remember that AI responses can vary based on input data, model training, and other factors. Be prepared for different outcomes.

Below are some examples of using the AI operator.

 Text Generation

A user request can be a text prompt, such as asking to generate an invitation for an event as the value of the variable Val:

\. Add the Trigger on Run once and SetVariables nodes to the scenario.

\. Add the variable Val and set its value to `{{askAI("Generate a short invitation text for an event\r")}}`.

\. Run the scenario once and review the node execution results to verify the presence of the new variable.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdffae-a--ab-babbbd%FUntitled.png?table=block&id=d-a-b-aace-fbbec&cache=v)

 User Feedback Monitoring

A request can involve identifying the tone or sentiment of incoming text. The text can be the output parameter of a previous node, such as an email or Telegram chat message. For simplicity, generate the text directly within the scenario by adding the following nodes:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fc-df--ab-ecb%FUntitled.png?table=block&id=d-a-b-da-ceffddbc&cache=v)

\. Trigger on Run once node to trigger the scenario with the Run once button.

\. SetVariables node to generate the Text variable, containing the product review text.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fddfaa-a-d-bf-ddeb%FUntitled.png?table=block&id=d-a---ceabffc&cache=v)

\. Webhook response node to return a response upon successful execution of the scenario. In the Body field of the Webhook response node, add the AI operator with a request using the variable from the SetVariables node: `{{askAI("Determine if the text \"" + _.Text + "\" is a negative review")}}`

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdefb-cee-e-ac-edecb%FUntitled.png?table=block&id=d-a-b-ad-dbdeeb&cache=v)

The result of this scenario is an AI response:

_Yes, the text "The packaging is damaged and the courier was late" can be considered a negative review._

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdae-d--bea-acbafcfb%FUntitled.png?table=block&id=d-a-dc-b-fbddf&cache=v)

 Text Classification

A request can involve determining if the incoming text is a question. Using the AI operator in routes allows the scenario to follow different branches based on the AI's response.

️

Since the condition for route execution is a boolean TRUE in the Condition field, you must configure this field correctly. For example, ask the AI to return "true" or "false" and compare the result to "true." The equality true=true will be TRUE, triggering the route.

For simplicity, generate the text directly within the scenario by adding the following nodes:

\. Trigger on Run once node to trigger the scenario with the Run once button.

\. SetVariables node to generate the Value variable containing the text for classification.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbd-fe--fbf-cccaec%FUntitled.png?table=block&id=d-a--baf-edafdfe&cache=v)

\. Question route with the condition `{{askAI("The text contains \"" + $.Value + "\" is there a question? If so, return one word \"true\", otherwise return one word \"false\"") = "true"}}`.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdcc-c-ab-ba-cac%FUntitled.png?table=block&id=d-a-a-ed-dfbfee&cache=v)

\. Webhook response node for the Question route with the response _The text contains a question_ upon scenario execution.

\. Not a question route with the condition `{{askAI("The text contains \"" + $.Value + "\" is there a question? If not, return one word \"true\", otherwise return one word \"false\"") = "true"}}`.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fff--aef-d-cafefcdd%FUntitled.png?table=block&id=d-a--af-cc&cache=v)

\. Webhook response node for the Not a question route with the response _The text does not contain a question_ upon scenario execution.

The result of the scenario depends on the text in the Value variable:

- If the variable contains a question, such as _What is the deadline for completing the task?_, the scenario's result is _The text contains a question_.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Febe-b--afb-cbeaaf%FUntitled.png?table=block&id=d-a-f-bd-dabf&cache=v)

- If the variable contains a statement, such as _Documentation is an important part of learning_, the scenario's result is _The text does not contain a question_.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faeda-b-ba-bc-faaca%FUntitled.png?table=block&id=d-a--bf-cbbef&cache=v)