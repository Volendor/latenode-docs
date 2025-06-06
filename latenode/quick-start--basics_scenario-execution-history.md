---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/scenario-execution-history/DTZDagfGCHcoUcQLXe"
title: "Scenario Execution History – Latenode | Help Center"
---

 Scenario Execution History

How to view and analyze past executions of scenarios.




If the history table is empty, you need to run the scenario. For more details on running a scenario once, see the Run once Scenario Execution section.

Every scenario run (successful or unsuccessful) is recorded in the history. The history table is accessible by clicking the History button. The table displays key information about the scenario:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fd-dbc--bd-ebddf%FUntitled.png?table=block&id=d-a-b-ae-d&cache=v)

- (  ) Scenario start time;

- (  ) Branch (Development or Production) of the run scenario, including the version, e.g., v. Dev;

- (  ) Execution status of the scenario:

Success if the scenario is fully completed

Error if errors occurred during the scenario

Paused if the scenario is in the execution stage of a Wait node

New if the scenario was stopped by clicking the Stop button

- (  ) Scenario execution duration in seconds;

- (  ) Number of credits consumed by the scenario;

- (  ) Number of operations performed in the scenario.

 Viewing a Scenario

For each scenario run entry, there is a View button. Clicking the View button (  ) displays the nodes (  ) and their notifications (  ) for the selected version of the scenario. If the scenario ended with an error, error information is displayed (  ).

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbafa-fb--e-de%FUntitled.png?table=block&id=d-a--acf-ecced&cache=v)

 Restarting a Scenario

For each scenario run entry, there is a Restart button. Clicking the Restart button:

- Initiates a rerun identical to the selected scenario version and input data

- Creates a new history entry

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fa-f-f-eec-aabab%FUntitled.png?table=block&id=d-a--b-caadfe&cache=v)



You can also copy the scenario execution from the history.