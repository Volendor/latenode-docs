---
url: "https://help.latenode.com/white-label/prjuBbArcjESidVHw/api-usage/MWwAenfNwtJQiRaNRby"
title: "API Usage – Latenode | Help Center"
---

 API Usage

Instructions about capabilities for managing subscription plans, subscriptions, and users via the API.


This article describes the capabilities for managing subscription plans, subscriptions, and users via the API.

 Creating an API Token

To use the API, you need to create an API token in your personal dashboard. This can be done in the “Access Tokens” section:

. Log in to the platform

. Go to White Label → Access Tokens section

. Click on "Create Token" button

. Fill out the token creation form and click "OK"

. Copy the generated token

Admin token generate \| LATENODE

![background](https://cdn.arcade.software/cdn-cgi/image/fit=scale-down,format=auto,dpr=,width=,quality=,format=jpeg/https://app.arcade.software/images/backgrounds/bg-.png)

![Step ](https://cdn.arcade.software/cdn-cgi/image/fit=scale-down,format=auto,dpr=,width=/extension-uploads/HWWcGIIOsgXzqyLRM/image/bcb-ba-a-ac-bbeaf.png)

![Step ](https://cdn.arcade.software/cdn-cgi/image/fit=scale-down,format=auto,dpr=,width=/extension-uploads/HWWcGIIOsgXzqyLRM/image/dbadd-ed--a-cca.png)

reCAPTCHA

Recaptcha requires verification.

[Privacy](https://www.google.com/intl/en/policies/privacy/) \- [Terms](https://www.google.com/intl/en/policies/terms/)

protected by reCAPTCHA

[Privacy](https://www.google.com/intl/en/policies/privacy/) \- [Terms](https://www.google.com/intl/en/policies/terms/)



Important!

This token is not stored on the platform’s servers. After clicking the “Done” button, you will no longer be able to access it. Be sure to copy and store the token in a safe place.

 Using the API Token in Requests

To authenticate, add a `query` parameter named `AUTH_TOKEN` with the value of your created token from the “Access Tokens” section to each request. For example, to retrieve the list of created subscription plans, the request URL would look like this:

```
https://api.latenode.comlatenode/v/whitelabel/plans?AUTH_TOKEN=YOUR_API_TOKEN
```

This applies similarly to all other requests.

 Common Response Container for All Requests

Each request described in this article returns a standard response format:

```
{
    "success": true,
    "request_id": "SpawvKmGWljPqGR",
    "data": {},
    "errors": []
}

```

The `data` field contains the data related to the specific endpoint. This `data` field will be described as the response format for each endpoint.

 Response Codes

For successful requests, the response code is always ``. For failed requests, the response code can be either `` or ``. Always check the `success` field in the common response container. If an error occurs, this field will be `false`, and the `errors` array will not be empty.

An exception is unauthorized access to the API. In this case, the response code will always be ``.

 Error Handling

The general format of an error response looks like this:

```
{
    "success": false,
    "data": null,
    "errors": [\
        {\
            "message": "error message",\
            "code": "error.code"\
        }\
    ],
    "request_id": "IvqOBSrwjaIozfafu"
}

```

To retrieve the error code, always refer to index `` of the `errors` array. This index is reserved and always used to transmit the error code to the client.

For example, for unauthorized access to the API, you will receive the following response:

```
{
    "success": false,
    "data": null,
    "errors": [\
        {\
            "message": "Unauthorized",\
            "code": "auth.Unauthorized"\
        }\
    ],
    "request_id": "xbpvvshmmALFhyZk"
}

```

 Retrieve the List of Quotas for Your Organization

URL:

```
https://api.latenode.com/latenode/v/whitelabel/quotas
```

Query Parameters:

None

Method:

GET

Response Format ( `data` ):

```
- Field:       quotas
  Type:        array
  Description: List of quotas
  Contents:
    - Field:       alias
      Type:        string
      Description: Quota alias. Possible values:
                   min_execution_charging_period_in_mcs — Minimum execution charge (Microseconds)
                   regular_microcredits — Execution microcredits
                   connected_accounts_limit — Connected accounts limit
                   parallel_executions_limit — Parallel executions limit
                   ai_assistant_request_limit — AI assistant request limit
                   plug_and_play_microcredits — Plug&Play microtokens
                   min_triggering_interval_in_seconds — Minimum trigger interval (Seconds)
                   active_scenarios_limit — Active scenarios limit
                   exec_history_availability_period_in_min — Execution history availability period (Minutes)
      ---
    - Field:       value
      Type:        object
      Description: Object with quota value
      Contents:
        - Field:       int
          Type:        string
          Description: Numeric value of the quota (if applicable)
          ---
        - Field:       bool
          Type:        boolean
          Description: Boolean value of the quota (if applicable)

```

Request Example:

```
curl --location 'https://api.latenode.com/latenode/v/whitelabel/quotas?AUTH_TOKEN=YOUR_API_TOKEN'
```

Response Example:

```
{
    "success": true,
    "request_id": "UrUNdGscccEETJViSL",
    "data": {
        "quotas": [\
            {\
                "alias": "min_execution_charging_period_in_mcs",\
                "value": {\
                    "int": "",\
                    "bool": false\
                }\
            },\
            {\
                "alias": "ai_assistant_request_limit",\
                "value": {\
                    "int": "",\
                    "bool": false\
                }\
            },\
            {\
                "alias": "parallel_executions_limit",\
                "value": {\
                    "int": "",\
                    "bool": false\
                }\
            },\
            {\
                "alias": "exec_history_availability_period_in_min",\
                "value": {\
                    "int": "",\
                    "bool": false\
                }\
            },\
            {\
                "alias": "plug_and_play_microcredits",\
                "value": {\
                    "int": "",\
                    "bool": false\
                }\
            },\
            {\
                "alias": "active_scenarios_limit",\
                "value": {\
                    "int": "",\
                    "bool": false\
                }\
            },\
            {\
                "alias": "min_triggering_interval_in_seconds",\
                "value": {\
                    "int": "",\
                    "bool": false\
                }\
            },\
            {\
                "alias": "connected_accounts_limit",\
                "value": {\
                    "int": "",\
                    "bool": false\
                }\
            },\
            {\
                "alias": "regular_microcredits",\
                "value": {\
                    "int": "",\
                    "bool": false\
                }\
            }\
        ]
    },
    "errors": []
}
```

 Retrieve List of Created Plans

URL:

```
https://api.latenode.com/latenode/v/whitelabel/plans
```

Query Parameters:

None

Method:

GET

Response Format:

```
- Field:        plans
  Type:         array
  Description:  List of pricing plans
  Content:
    - Field:       id
      Type:        string
      Description: ID of the pricing plan
      ---
    - Field:       name
      Type:        string
      Description: Name of the pricing plan
      ---
    - Field:       status
      Type:        string
      Description: Current status of the pricing plan.
                   Possible values:
                   plan_status_archived – plan is archived
                   plan_status_active – plan is active
      ---
    - Field:       features
      Type:        array
      Description: List of pricing plan features
      Content:
        - Field:       alias
          Type:        string
          Description: Feature alias. Possible values:
                       min_execution_charging_period_in_mcs – Minimum execution charge (microseconds)
                       regular_microcredits – Execution microcredits
                       connected_accounts_limit – Connected accounts limit
                       parallel_executions_limit – Parallel executions limit
                       ai_assistant_request_limit – AI assistant request limit
                       plug_and_play_microcredits – Plug&Play microtokens
                       min_triggering_interval_in_seconds – Minimum trigger interval (seconds)
                       active_scenarios_limit – Active scenarios limit
                       exec_history_availability_period_in_min – Execution history availability period (minutes)
        ---
        - Field:       value
          Type:        object
          Description: Object containing the feature value
          Content:
            - Field:       int
              Type:        string
              Description: If the feature is numeric, it is provided here
              ---
            - Field:       bool
              Type:        boolean
              Description: If the feature is boolean, it is provided here
      ---
    - Field:       created_at
      Type:        string
      Description: Date the plan was created
      ---
    - Field:       updated_at
      Type:        string
      Description: Date the plan was last updated

```

Example Request:

```
curl --location 'https://api.latenode.com/latenode/v/whitelabel/plans?AUTH_TOKEN=YOUR_API_TOKEN'
```

Example Response:

```
{
    "success": true,
    "request_id": "dPuNLQBjGUGxB",
    "data": {
        "plans": [\
            {\
                "id": "",\
                "name": "Demo Test Plan",\
                "status": "plan_status_active",\
                "features": [\
                    {\
                        "alias": "min_execution_charging_period_in_mcs",\
                        "value": {\
                            "int": "",\
                            "bool": false\
                        }\
                    },\
                    {\
                        "alias": "regular_microcredits",\
                        "value": {\
                            "int": "",\
                            "bool": false\
                        }\
                    },\
                    {\
                        "alias": "connected_accounts_limit",\
                        "value": {\
                            "int": "",\
                            "bool": false\
                        }\
                    },\
                    {\
                        "alias": "parallel_executions_limit",\
                        "value": {\
                            "int": "",\
                            "bool": false\
                        }\
                    },\
                    {\
                        "alias": "ai_assistant_request_limit",\
                        "value": {\
                            "int": "",\
                            "bool": false\
                        }\
                    },\
                    {\
                        "alias": "plug_and_play_microcredits",\
                        "value": {\
                            "int": "",\
                            "bool": false\
                        }\
                    },\
                    {\
                        "alias": "min_triggering_interval_in_seconds",\
                        "value": {\
                            "int": "",\
                            "bool": false\
                        }\
                    },\
                    {\
                        "alias": "active_scenarios_limit",\
                        "value": {\
                            "int": "",\
                            "bool": false\
                        }\
                    },\
                    {\
                        "alias": "exec_history_availability_period_in_min",\
                        "value": {\
                            "int": "",\
                            "bool": false\
                        }\
                    }\
                ],\
                "created_at": "--T::Z",\
                "updated_at": "--T::Z"\
            }\
        ]
    },
    "errors": []
}
```

 Create a Pricing Plan

URL:

```
https://api.latenode.com/latenode/v/whitelabel/plans
```

Method:

POST

Body Parameters:

```
- Field:        name
  Type:         string
  Description:  Name of the new pricing plan
  ---

- Field:        features
  Type:         array
  Description:  List of features for the new plan
  Content:
    - Field:       alias
      Type:        string
      Description: Feature alias. Possible values:
                   min_execution_charging_period_in_mcs – Minimum execution charge (microseconds)
                   regular_microcredits – Execution microcredits
                   connected_accounts_limit – Connected accounts limit
                   parallel_executions_limit – Parallel executions limit
                   ai_assistant_request_limit – AI assistant request limit
                   plug_and_play_microcredits – Plug&Play microtokens
                   min_triggering_interval_in_seconds – Minimum trigger interval (seconds)
                   active_scenarios_limit – Active scenarios limit
                   exec_history_availability_period_in_min – Execution history availability period (minutes)
      ---
    - Field:       value
      Type:        object
      Description: Object containing the feature value
      Content:
        - Field:       int
          Type:        string
          Description: Provided if value is numeric
          ---
        - Field:       bool
          Type:        boolean
          Description: Provided if value is boolean

```

Response Format ( `data` ):

```
- Field:        plan
  Type:         object
  Description:  Object containing the created plan's data
  Content:
    - Field:       id
      Type:        string
      Description: ID of the new pricing plan
      ---
    - Field:       name
      Type:        string
      Description: Name of the new pricing plan
      ---
    - Field:       status
      Type:        string
      Description: Plan status. Possible values:
                   plan_status_archived – plan is archived
                   plan_status_active – plan is active
      ---
    - Field:       features
      Type:        array
      Description: List of features
      Content:
        - Field:       alias
          Type:        string
          Description: Feature alias
          ---
        - Field:       value
          Type:        object
          Description: Feature value object
          Content:
            - Field:       int
              Type:        string
              Description: Numeric value, if applicable
              ---
            - Field:       bool
              Type:        boolean
              Description: Boolean value, if applicable
      ---
    - Field:       created_at
      Type:        string
      Description: Plan creation date
      ---
    - Field:       updated_at
      Type:        string
      Description: Plan last update date

```

Example Request:

```
curl --location 'https://api.latenode.com/latenode/v/whitelabel/plans?AUTH_TOKEN=YOUR_API_TOKEN' \
--header 'Content-Type: application/json' \
--data '{
    "name": "Plan Name",
    "features": [\
        {\
            "alias": "active_scenarios_limit",\
            "value": {\
                "int": "",\
                "bool": false\
            }\
        },\
        {\
            "alias": "connected_accounts_limit",\
            "value": {\
                "int": "",\
                "bool": false\
            }\
        },\
        {\
            "alias": "plug_and_play_microcredits",\
            "value": {\
                "int": "",\
                "bool": false\
            }\
        },\
        {\
            "alias": "min_triggering_interval_in_seconds",\
            "value": {\
                "int": "",\
                "bool": false\
            }\
        },\
        {\
            "alias": "min_execution_charging_period_in_mcs",\
            "value": {\
                "int": "",\
                "bool": false\
            }\
        },\
        {\
            "alias": "exec_history_availability_period_in_min",\
            "value": {\
                "int": "",\
                "bool": false\
            }\
        },\
        {\
            "alias": "regular_microcredits",\
            "value": {\
                "int": "",\
                "bool": false\
            }\
        },\
        {\
            "alias": "parallel_executions_limit",\
            "value": {\
                "int": "",\
                "bool": false\
            }\
        },\
        {\
            "alias": "ai_assistant_request_limit",\
            "value": {\
                "int": "",\
                "bool": false\
            }\
        }\
    ]
}'
```

Example Response:

```
{
    "success": true,
    "request_id": "IitHDuiyKSOCuGGHzW",
    "data": {
        "plan": {
            "id": "",
            "name": "Plan Name",
            "status": "plan_status_active",
            "features": [\
                {\
                    "alias": "plug_and_play_microcredits",\
                    "value": {\
                        "int": "",\
                        "bool": false\
                    }\
                },\
                {\
                    "alias": "min_execution_charging_period_in_mcs",\
                    "value": {\
                        "int": "",\
                        "bool": false\
                    }\
                },\
                {\
                    "alias": "parallel_executions_limit",\
                    "value": {\
                        "int": "",\
                        "bool": false\
                    }\
                },\
                {\
                    "alias": "ai_assistant_request_limit",\
                    "value": {\
                        "int": "",\
                        "bool": false\
                    }\
                },\
                {\
                    "alias": "active_scenarios_limit",\
                    "value": {\
                        "int": "",\
                        "bool": false\
                    }\
                },\
                {\
                    "alias": "connected_accounts_limit",\
                    "value": {\
                        "int": "",\
                        "bool": false\
                    }\
                },\
                {\
                    "alias": "min_triggering_interval_in_seconds",\
                    "value": {\
                        "int": "",\
                        "bool": false\
                    }\
                },\
                {\
                    "alias": "exec_history_availability_period_in_min",\
                    "value": {\
                        "int": "",\
                        "bool": false\
                    }\
                },\
                {\
                    "alias": "regular_microcredits",\
                    "value": {\
                        "int": "",\
                        "bool": false\
                    }\
                }\
            ],
            "created_at": "--T::.Z",
            "updated_at": "--T::.Z"
        }
    },
    "errors": []
}
```

 Update Plan

URL:

```
https://api.latenode.com/latenode/v/whitelabel/plans/update
```

Method:

POST

Query Parameters:

None

Body Parameters:



Important!

This API does not support partial updates. The `name` and `features` fields are required and must contain the complete new (or old, if no changes are needed) values.

```
- Field:        plan_id
  Type:         string
  Description:  ID of the plan to be updated
  ---
- Field:        name
  Type:         string
  Description:  New name for the plan
  ---
- Field:        features
  Type:         array
  Description:  Updated list of plan features
  Contents:
    - Field:       alias
      Type:        string
      Description: Feature alias. Possible values:
                   min_execution_charging_period_in_mcs — Minimum execution charge (Microseconds)
                   regular_microcredits — Execution microcredits
                   connected_accounts_limit — Connected accounts limit
                   parallel_executions_limit — Parallel executions limit
                   ai_assistant_request_limit — AI assistant request limit
                   plug_and_play_microcredits — Plug&Play microcredits
                   min_triggering_interval_in_seconds — Minimum triggering interval (Seconds)
                   active_scenarios_limit — Active scenarios limit
                   exec_history_availability_period_in_min — Execution history availability period (Minutes)
      ---
    - Field:       value
      Type:        object
      Description: Feature value object
      Contents:
        - Field:       int
          Type:        string
          Description: Integer value, if applicable
          ---
        - Field:       bool
          Type:        boolean
          Description: Boolean value, if applicable

```

Response Format ( `data` ):

```
Response body is empty. See the `success` field in the common response container.
```

Request Example:

```
curl --location 'https://api.latenode.com/latenode/v/whitelabel/plans/update?AUTH_TOKEN=YOUR_API_TOKEN' \
--header 'Content-Type: application/json' \
--data '{
    "plan_id": "",
    "name": "new plan name",
    "features": [\
        {\
            "alias": "active_scenarios_limit",\
            "value": {\
                "int": "",\
                "bool": false\
            }\
        },\
        {\
            "alias": "connected_accounts_limit",\
            "value": {\
                "int": "",\
                "bool": false\
            }\
        },\
        {\
            "alias": "plug_and_play_microcredits",\
            "value": {\
                "int": "",\
                "bool": false\
            }\
        },\
        {\
            "alias": "min_triggering_interval_in_seconds",\
            "value": {\
                "int": "",\
                "bool": false\
            }\
        },\
        {\
            "alias": "min_execution_charging_period_in_mcs",\
            "value": {\
                "int": "",\
                "bool": false\
            }\
        },\
        {\
            "alias": "exec_history_availability_period_in_min",\
            "value": {\
                "int": "",\
                "bool": false\
            }\
        },\
        {\
            "alias": "regular_microcredits",\
            "value": {\
                "int": "",\
                "bool": false\
            }\
        },\
        {\
            "alias": "parallel_executions_limit",\
            "value": {\
                "int": "",\
                "bool": false\
            }\
        },\
        {\
            "alias": "ai_assistant_request_limit",\
            "value": {\
                "int": "",\
                "bool": false\
            }\
        }\
    ]
}'
```

Response Example:

```
{
    "success": true,
    "request_id": "SpawvKmGWljPqGR",
    "data": {},
    "errors": []
}
```

 Archive Plan

URL:

```
https://api.latenode.com/latenode/v/whitelabel/plans/archive
```

Method:

POST

Body Parameters:

```
- Field:        plan_id
  Type:         string
  Description:  ID of the plan to be archived

```

Response Format ( `data` ):

```
Response body is empty. See the `success` field in the common response container.

```

Request Example:

```
curl --location 'https://api.latenode.com/latenode/v/whitelabel/plans/archive?AUTH_TOKEN=YOUR_API_TOKEN' \
--header 'Content-Type: application/json' \
--data '{
    "plan_id": ""
}'
```

Response Example:

```
{
    "success": true,
    "request_id": "rGFnQaEGyTDhC",
    "data": {},
    "errors": []
}
```

 Get Subscription List

URL:

```
https://api.latenode.com/latenode/v/whitelabel/subscriptions/list
```

Method:

POST

Body Parameters:

```
- Field:        options
  Type:         object
  Description:  Request options
  Contents:
    - Field:       include_consumption
      Type:        boolean
      Description: Whether to include resource consumption info in the response
  ---

- Field:        filters
  Type:         object
  Description:  Filters for selecting subscriptions
  Contents:
    - Field:       user_id
      Type:        string
      Description: Filter by user ID. Can be empty
      ---
    - Field:       statuses
      Type:        array
      Description: Array of subscription statuses for filtering.
                   Possible values:
                   subscription_status_active — active subscription
                   subscription_status_cancelled — cancelled subscription
      ---
    - Field:       consumption
      Type:        object
      Description: Resource consumption filters
      Contents:
        - Field:       resources
          Type:        array
          Description: Resource types to analyze consumption.
                       Possible values:
                       billing_resource_execution_credits — execution credits
                       billing_resource_plug_and_play_credits — Plug&Play credits
          ---
        - Field:       start
          Type:        string
          Description: Start date of the analysis period. If not set, defaults to first usage
          ---
        - Field:       end
          Type:        string
          Description: End date of the analysis period. If not set, defaults to current time

```

Response Format ( `data` ):

```
- Field:        subscriptions
  Type:         array
  Description:  List of subscriptions
  Contents:
    - Field:       id
      Type:        string
      Description: Subscription ID
      ---
    - Field:       plan_id
      Type:        string
      Description: Associated plan ID
      ---
    - Field:       user_id
      Type:        string
      Description: User ID
      ---
    - Field:       status
      Type:        string
      Description: Current subscription status
                   Possible values:
                   subscription_status_active — active subscription
                   subscription_status_cancelled — cancelled subscription
      ---
    - Field:       consumption
      Type:        object
      Description: Resource consumption info (if requested)
      Contents:
        - Field:       execution_credits
          Type:        object
          Description: Execution microcredits usage
          Contents:
            - Field:       total
              Type:        string
              Description: Total consumed credits
              ---
        - Field:       plug_and_play_credits
          Type:        object
          Description: Plug&Play microtokens usage
          Contents:
            - Field:       total
              Type:        string
              Description: Total consumed tokens
      ---
    - Field:       created_at
      Type:        string
      Description: Subscription creation date
      ---
    - Field:       cancelled_at
      Type:        string
      Description: Subscription cancellation date (if cancelled)

```

Request Example:

```
curl --location 'https://api.latenode.com/latenode/v/whitelabel/subscriptions/list?AUTH_TOKEN=YOUR_API_TOKEN' \
--header 'Content-Type: application/json' \
--data '{
    "options": {
        "include_consumption": true
    },
    "filters": {
        "user_id": "my_test_user_",
        "statuses": ["subscription_status_active"],
        "consumption": {
            "resources": ["billing_resource_execution_credits"],
            "start": "--T::.Z",
            "end": "--T::.Z"
        }
    }
}'
```

Response Example:

```
{
    "success": true,
    "request_id": "HMIjfzAIiuGHbBJF",
    "data": {
        "subscriptions": [\
            {\
                "id": "",\
                "plan_id": "",\
                "user_id": "my_test_user_",\
                "status": "subscription_status_active",\
                "consumption": {\
                    "execution_credits": {\
                        "total": ""\
                    },\
                    "plug_and_play_credits": null\
                },\
                "created_at": "--T::Z",\
                "cancelled_at": null\
            }\
        ]
    },
    "errors": []
}
```

 Assign a Subscription to a User

URL:

```
https://api.latenode.com/latenode/v/whitelabel/subscriptions
```

Method:

POST

Query Parameters:

None

Body Parameters:

```
- Field:       user_id
  Type:        string
  Description: The ID of the user to whom the subscription will be assigned
  ---

- Field:       plan_id
  Type:        string
  Description: The ID of the pricing plan for the subscription

```

Response Format ( `data` ):

```
- Field:       subscription
  Type:        object
  Description: Object containing the created subscription data
  Contents:
    - Field:       id
      Type:        string
      Description: Subscription ID
      ---
    - Field:       plan_id
      Type:        string
      Description: ID of the associated pricing plan
      ---
    - Field:       user_id
      Type:        string
      Description: ID of the user
      ---
    - Field:       status
      Type:        string
      Description: Current status of the subscription.
                   Possible values:
                   subscription_status_active — active subscription
                   subscription_status_cancelled — cancelled subscription
      ---
    - Field:       consumption
      Type:        null
      Description: Always null, since no usage could have occurred yet
      ---
    - Field:       created_at
      Type:        string
      Description: Subscription creation timestamp
      ---
    - Field:       cancelled_at
      Type:        null

```

Example Request:

```
curl --location 'https://api.latenode.com/latenode/v/whitelabel/subscriptions?AUTH_TOKEN=YOUR_API_TOKEN' \
--header 'Content-Type: application/json' \
--data '{
    "user_id": "my_test_user_",
    "plan_id": ""
}'
```

Example Response:

```
{
    "success": true,
    "request_id": "VbCfCMPIJmpcuvI",
    "errors": [],
    "data": {
        "subscription": {
            "id": "",
            "plan_id": "",
            "user_id": "my_test_user_",
            "status": "subscription_status_active",
            "consumption": null,
            "created_at": "--T::.Z",
            "cancelled_at": null
        }
    }
}
```

 Cancel a Subscription

URL:

```
https://api.latenode.com/latenode/v/whitelabel/subscriptions/cancel
```

Method:

POST

Body Parameters:

```
- Field:       subscription_id
  Type:        number
  Description: ID of the subscription to be cancelled

```

Response Format ( `data` ):

```
No response body. Refer to the `success` field in the common response container.

```

Example Request:

```
curl --location 'https://api.latenode.com/latenode/v/whitelabel/subscriptions/cancel?AUTH_TOKEN=YOUR_API_TOKEN' \
--header 'Content-Type: application/json' \
--data '{
    "subscription_id": ""
}'
```

Example Response:

```
{
    "success": true,
    "request_id": "JKWRLlKIlPtTPQOjB",
    "errors": [],
    "data": {}
}
```

 Get Users List

URL:

```
https://api.latenode.com/latenode/v/whitelabel/users/list
```

Method:

POST

Query Parameters:

None

Body Parameters:

```
- Field:        options
  Type:         object
  Description:  Request options
  Contents:
    - Field:       include_subscriptions
      Type:        boolean
      Description: Whether to include subscription information
      ---
    - Field:       include_consumption
      Type:        boolean
      Description: Whether to include resource consumption information
  ---

- Field:        filters
  Type:         object
  Description:  Resource consumption filters
  Contents:
    - Field:       consumption
      Type:        object
      Description: Consumption filters
      Contents:
        - Field:       resources
          Type:        array
          Description: Types of resources to filter by. Possible values:
                       billing_resource_execution_credits — execution credits
                       billing_resource_plug_and_play_credits — Plug&Play credits
          ---
        - Field:       start
          Type:        string
          Description: Start date of the period. If not provided, defaults to first usage
          ---
        - Field:       end
          Type:        string
          Description: End date of the period. If not provided, defaults to the current time

```

Response Format ( `data` ):

```
- Field:       users
  Type:        array
  Description: List of users
  Contents:
    - Field:       user_id
      Type:        string
      Description: Unique user ID
      ---
    - Field:       subscriptions
      Type:        array
      Description: User's subscriptions (if include_subscriptions = true)
      Contents:
        - Field:       id
          Type:        string
          Description: Subscription ID
          ---
        - Field:       plan_id
          Type:        string
          Description: ID of the associated pricing plan
          ---
        - Field:       user_id
          Type:        string
          Description: User ID
          ---
        - Field:       status
          Type:        string
          Description: Current subscription status.
                       Possible values:
                       subscription_status_active — active subscription
                       subscription_status_cancelled — cancelled subscription
          ---
        - Field:       consumption
          Type:        object
          Description: Resource consumption info (if include_consumption = true)
          Contents:
            - Field:       execution_credits
              Type:        object
              Description: Execution microcredits usage
              Contents:
                - Field:       total
                  Type:        string
                  Description: Total used credits
                ---
            - Field:       plug_and_play_credits
              Type:        object
              Description: Plug&Play token usage
              Contents:
                - Field:       total
                  Type:        string
                  Description: Total used tokens
          ---
        - Field:       created_at
          Type:        string
          Description: Subscription creation timestamp
          ---
        - Field:       cancelled_at
          Type:        string
          Description: Subscription cancellation timestamp (if cancelled)

```

Example Request:

```
curl --location 'https://api.latenode.com/latenode/v/whitelabel/users/list?AUTH_TOKEN=YOUR_API_TOKEN' \
--header 'Content-Type: application/json' \
--data '{
    "options": {
        "include_subscriptions": true,
        "include_consumption": true
    },
    "filters": {
        "consumption": {
            "resources": ["billing_resource_execution_credits"],
            "start": "--T::.Z",
            "end": "--T::.Z"
        }
    }
}'
```

Example Response:

```
{
    "success": true,
    "request_id": "iPlJoZDJmQZnjkxoJXU",
    "data": {
        "users": [\
            {\
                "user_id": "my_test_user_",\
                "subscriptions": [\
                    {\
                        "id": "",\
                        "plan_id": "",\
                        "user_id": "my_test_user_",\
                        "status": "subscription_status_active",\
                        "consumption": {\
                            "execution_credits": {\
                                "total": ""\
                            },\
                            "plug_and_play_credits": null\
                        },\
                        "created_at": "--T::Z",\
                        "cancelled_at": null\
                    },\
                    {\
                        "id": "",\
                        "plan_id": "",\
                        "user_id": "my_test_user_",\
                        "status": "subscription_status_cancelled",\
                        "consumption": null,\
                        "created_at": "--T::Z",\
                        "cancelled_at": null\
                    }\
                ]\
            }\
        ]
    },
    "errors": []
}
```

 Get Resource Consumption Report

URL:

```
https://api.latenode.com/latenode/v/whitelabel/reports/consumption
```

Method:

POST

Body Parameters:

```
- Field:        start
  Type:         string
  Description:  The start date of the period. If not provided, the first usage date is used.
  ---

- Field:        end
  Type:         string
  Description:  The end date of the period. If not provided, the current time is used.
  ---

- Field:        options
  Type:         object
  Description:  Options for generating the report
  Contents:
    - Field:       include_total
      Type:        boolean
      Description: Whether to include total consumption across all users.
      ---
    - Field:       include_per_user
      Type:        boolean
      Description: Whether to include consumption details for each user.
  ---

- Field:        filters
  Type:         object
  Description:  Filters for resource types
  Contents:
    - Field:       resources
      Type:        array
      Description: A list of resource types. Possible values:
                   billing_resource_execution_credits — execution credits
                   billing_resource_plug_and_play_credits — Plug&Play credits

```

Response Format ( `data` ):

```
- Field:        total
  Type:         object
  Description:  Total resource consumption (if include_total = true)
  Contents:
    - Field:       execution_credits
      Type:        object
      Description: Consumption of execution microcredits
      Contents:
        - Field:       total
          Type:        string
          Description: Total number of credits used
      ---
    - Field:       plug_and_play_credits
      Type:        object
      Description: Consumption of Plug&Play microtokens
      Contents:
        - Field:       total
          Type:        string
          Description: Total number of tokens used
  ---

- Field:        users
  Type:         array
  Description:  Consumption details per user (if include_per_user = true)
  Contents:
    - Field:       user_id
      Type:        string
      Description: User ID
      ---
    - Field:       consumption
      Type:        object
      Description: Resource consumption
      Contents:
        - Field:       execution_credits
          Type:        object
          Description: Consumption of execution microcredits
          Contents:
            - Field:       total
              Type:        string
              Description: Total number of credits used
          ---
        - Field:       plug_and_play_credits
          Type:        object
          Description: Consumption of Plug&Play tokens
          Contents:
            - Field:       total
              Type:        string
              Description: Total number of tokens used
  ---

- Field:        start
  Type:         string
  Description:  Start date of the report period
  ---

- Field:        end
  Type:         string
  Description:  End date of the report period
```

Example Request:

```
curl --location 'https://api.latenode.com/latenode/v/whitelabel/reports/consumption?AUTH_TOKEN=YOUR_API_TOKEN' \
--header 'Content-Type: application/json' \
--data '{
    "start": "--T::.Z",
    "end": "--T::.Z",
    "options": {
        "include_total": true,
        "include_per_user": true
    },
    "filters": {
        "resources": [\
            "billing_resource_execution_credits",\
            "billing_resource_plug_and_play_credits"\
        ]
    }
}'
```

Example Response:

```
{
    "success": true,
    "request_id": "VwauyaaLlOjnZKXy",
    "data": {
        "total": {
            "execution_credits": {
                "total": ""
            },
            "plug_and_play_credits": null
        },
        "users": [\
            {\
                "user_id": "my_test_user_",\
                "consumption": {\
                    "execution_credits": {\
                        "total": ""\
                    },\
                    "plug_and_play_credits": null\
                }\
            }\
        ],
        "start": "--T::Z",
        "end": "--T::Z"
    },
    "errors": []
}
```

 Credit charge

URL:

```
https://api.latenode.com/latenode/v/whitelabel/billing/resource
```

Method:

POST

Body Parameters:

```
- Field:        user_id
  Type:         string
  Description:  USER ID
  ---

- Field:        resource
  Type:         string
  Description:  Added resource type
  ---

- Field:        quantity
  Type:         int
  Description:  Added resource quantity
```

Response Format ( `data` ):

```
Response body is empty. See the `success` field in the common response container.
```

Example Request:

```
curl --location 'http://api.latenode.com/latenode/v/whitelabel/billing/resource?AUTH_TOKEN=YOUR_API_TOKEN' \
--header 'Content-Type: application/json' \
--data '{
    "user_id": "",
    "resource": "billing_resource_plug_and_play_credits",
    "quantity": 
}'
```

Example Response:

```
{
    "success": true,
    "request_id": "SpawvKmfGR",
    "data": {},
    "errors": []
}
```