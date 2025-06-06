---
url: "https://help.latenode.com/advanced-features/DTZDaggyNRLGe/ai-agent-node/EMkauuCHosJGcSpK"
title: " AI Agent Node – Latenode | Help Center"
---

 AI Agent Node

Core component for building LLM-based automations using instructions, tool calls, and contextual memory.


![Notion Image](https://www.notion.so/image/attachment%Aacac-e-ef-b-db%ACleanShot_--_at_...png?table=block&id=dbd-a-e-a-edfcd&cache=v)

AI Agent is a component of the Latenode platform designed to build intelligent scenarios based on large language models (LLMs). It allows you to integrate external functions, conduct contextual dialogues, and perform sequential actions based on user input.

 Purpose

AI Agent is used for:

- generating responses to user queries;

- calling other nodes in a scenario as functions;

- working with short-term memory within a session;

- receiving structured JSON responses;

- executing scenarios with a limited number of iterations.

  

 AI Agent Interface

![Notion Image](https://www.notion.so/image/attachment%Aeedc-d-e-ff-b%Abrave_ZyxJIcxOZ.png?table=block&id=dbd-a--d-cfbaf&cache=v)

 Main Fields

|     |     |
| --- | --- |
| Field | Description |
| Session ID | Session identifier. Used to preserve context between interactions. |
| User Prompt | The user's main query. Supports variable interpolation. |
| System Message | Instruction for the language model. Controls the agent's behavior (tone, style, restrictions, etc.). |
| Agent ID | Agent identifier. Helps distinguish agents within one session and manage memory scope. |

 Additional Settings

|     |     |
| --- | --- |
| Field | Description |
| Max Iterations | Maximum number of iterations for calling external nodes. Prevents infinite loops. |
| Output JSON Schema | JSON schema of the expected output. Ensures a structured result for further processing. |

  

 How It Works

AI Agent implements the concept of Function Calling (as defined by OpenAI) or Tool Call. When launched, it forms a standard chat request with roles (system, user) and a list of available "tools" based on connected nodes.

The request includes:

- `System Message` — the system message (role: system),

- `User Prompt` — the user’s request (role: user),

- descriptions of available functions, composed from nodes using the expression:

```
{{fromAIAgent("argument_name"; "argument description")}}

```

> Example:

Each such node is treated as a callable function with a name, arguments, and description. If the model decides to call one of the functions, Latenode executes the corresponding node and returns the result to the AI Agent.

>  The model decides on its own which tools to invoke depending on the meaning of the user request. You can connect multiple nodes — only relevant ones will be triggered based on context.

  

 Connecting Nodes to the Agent

![Notion Image](https://www.notion.so/image/attachment%Af-b-a-ad-ecadb%Abrave_OyTBR.png?table=block&id=dbd-a--a-eaae&cache=v)

To make AI Agent use other scenario blocks, they must be visually connected from the bottom via the constructor interface.

- Drag the desired node (e.g., HTTP Request, Telegram, Search, etc.) and connect it to AI Agent from the bottom.

- Inside this node, use the `fromAIAgent()` expression in one of the input fields, like `Request Body`, `Text`, `Prompt`, etc.

Inside the field, use this format:

```
{{fromAIAgent("parameter_name"; "description")}}
```

Example:

![Notion Image](https://www.notion.so/image/attachment%Aeed-de-fb--ebdb%Abrave_TRFPFXKW.png?table=block&id=dbd-a-cf-b-ebffffb&cache=v)

```
{{fromAIAgent("city"; "City to get weather forecast for")}}
```

This expression registers the node as an available tool. The model will know it can call a tool with this node's name and parameter `city`, and use it according to the description.

> ️ Each node must have a name. Without it, execution is impossible.

  

 Example: Weather Forecast (No Authorization Required)

![Notion Image](https://www.notion.so/image/attachment%Abfc-ad-bf-f-bbdcc%Abrave_yitPOMTaK.png?table=block&id=dbd-a--e-fcbf&cache=v)

Let’s see how AI Agent works using a weather forecast request.

. Place an AI Agent on the canvas.

. In the `System Message` field, write:

```
You are an assistant who can get the weather. Use the appropriate tool.
```

. Add an `HTTP Request` node below it.

. Name the node, e.g., `weather_forecast`

. Set method to: `GET`

. In the URL field, insert:

```
https://wttr.in/{{fromAIAgent("city"; "City name for the weather forecast")}}?format=
```

. Launch AI Agent with the prompt:

```
What's the weather like in London?
```

As a result:

- The AI Agent receives the user request;

- analyzes that a weather forecast is needed;

- finds the node named `weather_forecast`, which uses `fromAIAgent` with the `city` parameter;

- substitutes the value “London” and makes the HTTP request;

- receives a brief forecast and sends it back to the user.

![Notion Image](https://www.notion.so/image/attachment%Aadaeb-fe--afa-fcbead%Abrave_lZuCwPmF.png?table=block&id=dbd-a--aa-fdcbbeb&cache=v)

  

 Example: Flexible Telegram Chatbot

AI Agent also works well in chatbot format. You can connect multiple nodes and let the model decide which to use.

For instance, here’s a basic Telegram chatbot:

![Notion Image](https://www.notion.so/image/attachment%Afbae--f-afa-afcedab%Abrave_qhscWrIMm.png?table=block&id=dbd-a--b-cba&cache=v)

Telegram trigger connected to AI Agent, and from AI Agent to:

- `search_web` (Perplexity);

- `create_image` (Recraft AI);

- `send_text` (Telegram - Send text);

- `send_photo` (Telegram - Send image)\]

In this scenario:

- If the user sends a general message, the agent simply replies with text.

![Notion Image](https://www.notion.so/image/attachment%Affbd-e-b-b-bcec%Abrave_uLUMwbj.png?table=block&id=dbd-a--adab-ecb&cache=v)

- If the user asks to search for something, it uses the `search_web` node.

![Notion Image](https://www.notion.so/image/attachment%Aacc-d-e-d-affafd%Abrave_RrYYBasQ.png?table=block&id=dbd-a-ad-a-deedfe&cache=v)

- If the user asks to generate an image, it uses the `create_image` node.

![Notion Image](https://www.notion.so/image/attachment%Adfed-af-a-aed-bdcc%Abrave_daUijnIAot.png?table=block&id=dbd-a-b--ebb&cache=v)

Each node is registered with `fromAIAgent()` to pass parameters. The model understands which tool to use — and ignores the rest.

This makes the chatbot dynamic and modular.

  

 Setup Recommendations

- All connected nodes should have unique and descriptive names.

- Use `Agent ID` to preserve context between launches or across scenarios.

- Set `Max Iterations` to avoid infinite loops from bad prompts.

- Use `Output JSON Schema` if you need a formalized response for further processing.

  

AI Agent is a key component of Latenode for building conversational and automated LLM-based scenarios. With support for context, iterative function calls, and structured data, it suits a wide range of use cases.

> ️ Don’t forget to set a node name — otherwise the scenario won’t run.