---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/error-handling-re-run-failed-nodes-using-a-fallback-route/EMkauqLgBiUETEoA"
title: "Error Handling: Re-run Failed Nodes Using a Fallback Route – Latenode | Help Center"
---

 Error Handling: Re-run Failed Nodes Using a Fallback Route

Sometimes external APIs or third-party services can be unstable and return errors. If you're aware of this and want to prevent such failures from interrupting the entire scenario, you can configure a targeted retry for specific nodes. This guide shows how to implement a fallback route that re-attempts the same step and uses the first successful result.

_The example below uses a Headless Browser, but this approach works for any node that might return an error._

![Notion Image](https://www.notion.so/image/attachment%A-c--b-dfbbefe%Abrave_oTflBZn.png?table=block&id=dbd-a--bf-eadbdac&cache=v)

Scenario Structure:

|     |     |     |
| --- | --- | --- |
|  | Step | Description |
|  | Trigger | Starts the process once |
|  | Headless Browser (primary) | Executes a task; if it fails, always returns `null` (when error ignoring is enabled) |
|  | Filter | Passes the result forward if `{{.bodyContent}} != null` (i.e., when no error occurred) |
|  | Fallback Route | Triggers if node  fails |
|  | Wait | (Optional) Adds a delay before retrying |
|  | Headless Browser (retry copy) | Attempts again — a copy of node  |
|  | SetVariable | Stores the first non-null result via `ifEmpty(.bodyContent; .bodyContent)` |

 How to Implement

 Step : Configure the potentially unstable node (e.g., Headless Browser - )
Enable the "Ignore errors" option.

![Notion Image](https://www.notion.so/image/attachment%Add-b-dd-afbd-fafe%Abrave_yzojDoSn.png?table=block&id=dbd-a-a--deecfb&cache=v)

This way, if it fails, `{{.bodyContent}}` always will be `null` and the scenario won't stop.

 Step : Add a filter before combining results
Insert a filter between nodes  and 

Filter expression:

```
{{ .bodyContent != null }}
```

![Notion Image](https://www.notion.so/image/attachment%Afb-cce-c-a-ee%Abrave_UdEiyNrOv.png?table=block&id=dbd-a-e-ba-fece&cache=v)

Meaning: "if the primary node returned content, let it pass"

 Step : Attach a fallback route to node 

![Notion Image](https://www.notion.so/image/attachment%Abd-cacd-bb-bc-abfc%Abrave_NCPptksWgH.png?table=block&id=dbd-a-d-da-cdffce&cache=v)

In the fallback route, insert a duplicate of main node

This acts as an alternative attempt.

 (Optional) Add a delay before retrying (if needed)
Sometimes it’s useful to wait before retrying (e.g., in case of rate limiting or slow loading).

 Step : Combine results using `ifEmpty` in SetVariable (node )
In SetVariable, create a variable, e.g., `finalBodyContent`, with this value:

![Notion Image](https://www.notion.so/image/attachment%Aedc-ed-e-ad-dbdb%Abrave_PbAoZRL.png?table=block&id=dbd-a--b-fcc&cache=v)

```
{{ifEmpty(.bodyContent;.bodyContent)}}
```

 Explanation:

- If `{{.bodyContent}}` is not `null`, it’s used.

- If it's `null` (the node failed), then `{{.bodyContent}}` is used instead.

Insert a `Wait` node between the fallback route and the retry copy (between F and )

 Result Check

In the SetVariable node, check this value:

```
{{ ifEmpty(.bodyContent; .bodyContent) }}
```

![Notion Image](https://www.notion.so/image/attachment%Afdbda-ff--ba-beac%Abrave_zOLXrJVR.png?table=block&id=dbd-a-e-b-eccf&cache=v)

If everything is set up correctly, this will always contain a successful `bodyContent`, even if the first node failed.

 Multiple Retries (if more attempts are needed)

If you expect that the second attempt might also fail (which can happen with highly unstable APIs), simply repeat the retry block and extend the `SetVariable` with a cascade like:

```
{{ ifEmpty(.bodyContent; .bodyContent; .bodyContent) }}

```

![Notion Image](https://www.notion.so/image/attachment%Aedb-c-c-be-effaeab%Abrave_oRIbdCAVx.png?table=block&id=dbd-a--b-feeed&cache=v)