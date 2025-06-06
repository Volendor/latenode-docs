---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/deepseek-coder-b-base-awq/kEYxeVVVjAfdTBDBiH"
title: "deepseek-coder-.b-base-awq – Latenode | Help Center"
---

 deepseek-coder-.b-base-awq

AI models optimized for code generation.


 Model Description

The `@hf/thebloke/deepseek-coder-.b-base-awq` model includes two nodes:

- deepseek-coder-.b-base-awq Prompt (preview)

- deepseek-coder-.b-base-awq With History (preview)



Model ID: `@hf/thebloke/deepseek-coder-.b-base-awq`. Deepseek Coder is a set of language models trained on large amounts of code and natural language in English and Chinese. Each model is trained from scratch on  trillion tokens, with % of the data being code and % being natural language.

  

The model is trained to perform tasks related to coding and programming. The main idea of using such a model is to provide developers with intelligent tools that facilitate and speed up the process of programming and working with code:

\. Code autocompletion. The model can suggest appropriate continuations of lines of code based on context, helping to speed up the programming process.

\. Code generation. The model is able to create code fragments taking into account the task, programming language and other conditions.

\. Code understanding and analysis. The model can be used for interpretation and structural parsing of existing programs, revealing their peculiarities and regularities.

\. Code refactoring and optimization. The model can suggest improvements and changes in the code to improve its quality, readability and performance.

  

 Example of launching a node

Let's run the deepseek-coder-.b-base-awq Prompt (preview) node to process text and generate a response with parameters:

- User Prompt _\- How to create a simple neural network using the TensorFlow library?_

- Max Tokens (Answer Size) \- .

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fb-c-d--debc%FUntitled.png?table=block&id=d-a-f-cb-de&cache=v)

The output of the node execution is JSON:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbb-db-d-b-dccfa%FUntitled.png?table=block&id=d-a---ccbbafdc&cache=v)

- with a response to the `"response"` request;

- with the status of the action `"success": true`.

JSON

```
{
  "result": {
    "errors": [],
    "messages": [],
    "result": {
      "response": "\n\n<jupyter_code>\nimport tensorflow as tf\nimport numpy as np\n\n Define the input and output data\nx_train = np.array([[, ], [, ], [, ], [, ]])\ny_train = np.array([[], [], [], []])\n\n Define the neural network architecture\nmodel = tf.keras.Sequential([\n    tf.keras.layers.Dense(, activation='sigmoid'),\n    tf.keras.layers.Dense(, activation='sigmoid')\n])\n\n Compile the model\nmodel.compile(optimizer='adam', loss='binary_crossentropy', metrics=['accuracy'])\n\n Train the model\nmodel.fit(x_train, y_train, epochs=, verbose=)\n\n Test the model\nx_test = np.array([[, ], [, ], [, ], [, ]])\ny_test = np.array([[], [], [], []])\nloss, accuracy = model.evaluate(x_test, y_test)\nprint('Test loss:', loss)\nprint('Test accuracy:', accuracy)\n<jupyter_output>\n/ [==============================] - s ms/step - loss: .e+ - accuracy: .\nTest loss: .\nTest accuracy: .\n"
    },
    "success": true
  }
}
```