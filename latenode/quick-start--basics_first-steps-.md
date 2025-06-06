---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/first-steps-/DTZDaghJGHrXtBmguwi"
title: "First Steps  – Latenode | Help Center"
---

 First Steps

Introduction to Latenode. Learn how to create automation scenarios and navigate the platform.


Latenode is a workflow automation platform. We call these automations "scenarios". A scenario is a set of nodes. Each node performs specific tasks (e.g., Add Row To Google Sheets or Send Email).

To configure any created scenario, follow these three main steps:

\. Add a trigger node to start the scenario.

\. Add an action node to perform a task in the scenario.

\. Run the scenario.

 Step  - Add a “Trigger” Node



[Watch a brief tutorial video on YouTube.](https://youtu.be/SgRvfcmJIZk?si=-Q_qVirAWrIdbr)

Creating Scenarios and Adding Triggers in Latenode \| Automation Basics - YouTube

[Photo image of Latenode](https://www.youtube.com/channel/UCCGRBRFERVidCYtKnBA?embeds_referring_euri=https%A%F%Fhelp.latenode.com%F)

Latenode

.K subscribers

[Creating Scenarios and Adding Triggers in Latenode \| Automation Basics](https://www.youtube.com/watch?v=SgRvfcmJIZk)

Latenode

If playback doesn't begin shortly, try restarting your device.

You're signed out

Videos you watch may be added to the TV's watch history and influence TV recommendations. To avoid this, cancel and sign in to YouTube on your computer.

 More videos

Share

Include playlist

An error occurred while retrieving sharing information. Please try again later.

[Watch on](https://www.youtube.com/watch?v=SgRvfcmJIZk&embeds_referring_euri=https%A%F%Fhelp.latenode.com%F)

:

: / :
•

[Watch on YouTube](https://www.youtube.com/watch?v=SgRvfcmJIZk "Watch on YouTube")

The trigger node will start the scenario. Scenario initiation can be triggered by:

- An event in an external application (e.g., a message in Telegram or a new email in Gmail).

- Clicking the Run once button.

- Sending an HTTP request.

 Selecting a Node

To select the appropriate trigger node:

\. On the scenario page, click any Add Node button.

\. In the Choose Application window, go to the Triggers tab, search for, and select the desired node. For example, select the New Email trigger from the Gmail group.

 Authorization (if necessary)

On first click of any added node, you will either see fields for configuration or a Create Authorization button. The presence of this button means that authorization is required for the node to work. Most APP nodes require prior authorization. To authorize (using the New Email node as an example):

\. Click the Create Authorization button.

\. Click New Authorization.

\. In the Choose Service window, select the required application. For the New Email node, this is the Gmail application.

\. Confirm Nodul platform access rights in the modal windows.

\. Verify in the New Email node that:

- The Connection field shows the connection.

- The node configuration fields are available.

 Configuring the Node

Almost every added node needs to be configured by filling in the required and optional fields.

For the New Email node, for example, you can fill in the Labels field. If you set the Labels field to UNREAD, the node will trigger the scenario when there is a new unread message.

 Performing the Initiating Action

To test the node:

\. Save the node settings.

\. Save the scenario.

\. Right-click the trigger node and select Run Node Once.

\. Send an email to the account used for authorization.

\. Wait for the node to execute and check for a success message.

️

The node will execute even without sending a new email if there are unread messages in the mailbox. If there are no unread messages, you will need to send an email.

 Step  - Add an “Action” Node



[Watch a brief tutorial video.](https://youtu.be/kMCdaQFrf?si=wS_lmfh-NfRYrT)

Adding Action Nodes and Testing Scenarios in Latenode \| Automation Tutorial - YouTube

[Photo image of Latenode](https://www.youtube.com/channel/UCCGRBRFERVidCYtKnBA?embeds_referring_euri=https%A%F%Fhelp.latenode.com%F)

Latenode

.K subscribers

[Adding Action Nodes and Testing Scenarios in Latenode \| Automation Tutorial](https://www.youtube.com/watch?v=kMCdaQFrf)

Latenode

If playback doesn't begin shortly, try restarting your device.

 More videos

You're signed out

Videos you watch may be added to the TV's watch history and influence TV recommendations. To avoid this, cancel and sign in to YouTube on your computer.

Share

Include playlist

An error occurred while retrieving sharing information. Please try again later.

[Watch on](https://www.youtube.com/watch?v=kMCdaQFrf&embeds_referring_euri=https%A%F%Fhelp.latenode.com%F)

:

: / :
•

[Watch on YouTube](https://www.youtube.com/watch?v=kMCdaQFrf "Watch on YouTube")

After the trigger node executes, the next node, the action node, will start its work. This node represents an event that should occur after the trigger event.

For example: When a new unread message arrives in Gmail, a response should be generated for that email.

In this case, the action is generating a response based on the incoming email's text. This action can be performed by one of the AI nodes.

 Selecting a Node

To select the appropriate action node:

\. Click the right connection point of the previously added trigger node.

\. In the Choose Application window on the Actions tab, search for and select the desired node. For generating a response, choose the AI Anthropic Claude  node from the AI ChatGPT Alternatives group.

 Configuring the Node

Unlike the New Email node, the AI Anthropic Claude  node does not require authorization and can be configured immediately. To configure this node:

\. Right-click the added AI Anthropic Claude  node.

\. Fill in the required fields:

- Model: Choose an AI model, such as Sonnet.

- User Prompt: Enter the user request to the AI, such as "Generate a response to the email with the text X."

\. Define the value of X, i.e., the email text to which you are responding. The email text is provided by the New Email trigger node as output data during execution.

Since the email text can vary, you need to input the parameter from the previous node rather than the actual text. To do this:

- Click the User Prompt field in the AI Anthropic Claude  node.

- In the Data tab, select the decodedContent parameter from the New Email node.

- Save the node settings.

️

To display the output parameters of previous nodes in the Data tab, those nodes must be executed (in our case, the New Email node). A successful node execution is indicated by a green icon in the corner of the node. Additionally, nodes must be connected directly or through other nodes.

 Testing the Node

To test how the added node performs the action:

\. Right-click the trigger node and select Run Node Once.

\. Review the execution results, including the generated text.

 Step  - Run your Scenario



[Watch a brief tutorial video.](https://youtu.be/tvogvmTDNM?si=ugunrBmFozbFRR)

Deploying and Running Scenarios in Latenode \| Automation Workflow Guide - YouTube

[Photo image of Latenode](https://www.youtube.com/channel/UCCGRBRFERVidCYtKnBA?embeds_referring_euri=https%A%F%Fhelp.latenode.com%F)

Latenode

.K subscribers

[Deploying and Running Scenarios in Latenode \| Automation Workflow Guide](https://www.youtube.com/watch?v=tvogvmTDNM)

Latenode

If playback doesn't begin shortly, try restarting your device.

You're signed out

Videos you watch may be added to the TV's watch history and influence TV recommendations. To avoid this, cancel and sign in to YouTube on your computer.

 More videos

Share

Include playlist

An error occurred while retrieving sharing information. Please try again later.

[Watch on](https://www.youtube.com/watch?v=tvogvmTDNM&embeds_referring_euri=https%A%F%Fhelp.latenode.com%F)

:

: / :
•

[Watch on YouTube](https://www.youtube.com/watch?v=tvogvmTDNM "Watch on YouTube")

The created scenario must be saved. If you need to test the scenario, you can run it once by clicking the Run Once button. After this execution, if the initiating event occurs, all nodes in the scenario will be executed sequentially, and you can review their results in the nodes' information windows.

Once the scenario is tested and ready for use, save it and click the Deploy button. The scenario will automatically become active and will execute whenever there is an unread email in the mailbox.