---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/deepseek-math-b-instruct/kEYxeVTmaVSYLiNDjE"
title: "deepseek-math-b-instruct – Latenode | Help Center"
---

 deepseek-math-b-instruct

AI model specialized in solving mathematical problems.


 Model Description

The `@cf/deepseek-ai/deepseek-math-b-instruct` model includes two nodes:

- deepseek-math-b-instruct Prompt (preview)

- deepseek-math-b-instruct With History (preview)



Model ID: `@cf/deepseek-ai/deepseek-math-b-instruct`. The DeepSeekMath-Instruct B model is a mathematically trained version of the more general DeepSeekMath-Base B model. It was initialized with the DeepSeek-Coder-v. B model and then continued pre-training on mathematical tokens taken from Common Crawl, as well as on natural language and code data totaling  billion tokens.

  

The model can be used to solve a variety of problems related to natural language processing and mathematical computation:

\. Answering math-related questions: explaining math concepts, solving math problems, suggesting steps for solving math problems.

\. Generating mathematical texts: creating mathematical reports, articles, essays, generating mathematical problems and exercises, composing mathematical proofs and conclusions

\. Processing mathematical data: analyzing and interpreting mathematical data, building mathematical models and forecasts, visualizing mathematical information

\. Assisting in mathematics education: explaining mathematical concepts to students, providing hints and recommendations when solving problems, creating mathematics tutorials

  

 Example of launching a node

Let's run the deepseek-math-b-instruct Prompt (preview) node to process text and generate a response with parameters:

- User Prompt _Write instructions for solving the quadratic equation $x^ - x +  = $_

- Max Tokens (Answer Size) \- .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ffe-ae-e-b-bafbd%FUntitled.png?table=block&id=d-a-bc-bd-cebcb&cache=v)

The output of the node execution is JSON:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Faecea--da-b-dec%FUntitled.png?table=block&id=d-a-f-b-fba&cache=v)

- with a response to the `"response"` request;

- with the status of the action `"success": true`.

JSON (parameter `"response"` )

```
To solve the quadratic equation $x^ - x +  = $, we can use the quadratic formula which is given by:

$x = \frac{-b \pm \sqrt{b^ - ac}}{a}$

In this case, $a = $, $b = -$, and $c = $. Plugging these values into the quadratic formula, we get:

$x = \frac{-(-) \pm \sqrt{(-)^ - }}{}$

Simplifying further:

$x = \frac{ \pm \sqrt{ - }}{}$

$x = \frac{ \pm \sqrt{}}{}$

We can simplify the square root by factoring out the perfect square:

$x = \frac{ \pm \sqrt{}}{}$

Now, we can simplify the expression by dividing the numerator and the denominator by :

$x = \frac{ \pm \sqrt{}}{}$

So, the solutions for $x$ are:

$x = \frac{ + \sqrt{}}{}$ and $x = \frac{ - \sqrt{}}{}$
```