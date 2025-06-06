---
url: "https://help.latenode.com/support--analytics/DTZDagfcsSJdCyLcX/framer/kEYxeVTJxPFWFpJxU"
title: "Framer – Latenode | Help Center"
---

 Framer

Automating design workflows in Framer.


The Latenode platform allows interaction with websites created using the Framer service. For interaction, only the Trigger on Webhook node is needed.

Let's create a scenario that records the email address entered in a website form into a Google Sheet. First, use the Framer service to create the registration form with a field for entering the email address and a confirmation button.

 Creating a Framer Form

\. In the Framer workspace, choose the method to add a Code element. In the Create Code File window, enter any name and select the New component option.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fca-db-b--ccffddec%FUntitled.png?table=block&id=d-a--a-ccfedae&cache=v)

\. Click the Create button.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fead-cf-c--dbc%FUntitled.png?table=block&id=d-a--a-defe&cache=v)

\. On the opened page, add the code below and save the changes by pressing Ctrl + S. The form with an email input field and a Signup button will appear on the right side of the interface.

```
import React, { useState } from "react"
import Example from "https://framer.com/m/framer/Example.js@^.."

export default function AuthorizationForm(props) {
    // Update this with your Trigger on Webhook URL
    const formUrl =
        "You_URL"

    // MAYBE: If you are adding more fields to your form in addition to email update here
    const [email, setEmail] = useState("")
    const [formStatus, setFormStatus] = useState("unsubmitted")

    const onSubmit = async (event) => {
        event.preventDefault()

        try {
            const response = await fetch(formUrl, {
                method: "POST",
                body: JSON.stringify({ email }), // Construct your form data: comma seperated list
                headers: {
                    "Content-type": "application/json",
                },
            })

            if (!response.ok) {
                throw new Error("Network response was not ok")
            }

            setFormStatus("submitted") // Update state to indicate successful submission
        } catch (error) {
            console.error("Error during form submission: ", error)
            setFormStatus("error") // Update state to indicate an error
        }
    }

    // Function to update email state
    // MAYBE: If you are adding more fields to your form in addition to email update here
    const handleEmailChange = (event) => {
        setEmail(event.target.value)
    }

    if (formStatus === "submitted") {
        return (
            <div style={responseText}>
                Thank you! You have successfully registered.
            </div>
        )
    }

    if (formStatus === "error") {
        return <div>Something went wrong. Please refresh and try again!</div>
    }
    return (
        <>
            {/ Label for the form /}
            <div style={labelStyle}>Please provide your email address.</div>
            {/ Form /}
            <form onSubmit={onSubmit} style={containerStyle}>
                <input
                    type="email"
                    value={email}
                    onChange={handleEmailChange}
                    placeholder="Your email"
                    required
                    style={inputStyle}
                />
                <input type="submit" value="Signup" style={submitButtonStyle} />
            </form>
        </>
    )
}
/// Updated Form Styles to match the provided image

// Assuming a dark theme similar to the one in the image
const containerStyle = {
    display: "flex", // Changed from flexDirection to display for correct CSS
    justifyContent: "space-between", // Align items side-by-side
    alignItems: "center",
    //background: "B", // Dark background
    padding: ".rem", // Reduced padding
    borderRadius: "px", // Smaller border radius for a subtler curve
    // boxShadow: " px px rgba(, , , .)", // A subtle shadow
    maxWidth: "px", // Max width for the form
    margin: "auto", // Center the form in the page
}

const inputStyle = {
    flex: "", // Take up the remaining space
    fontSize: "px", // Smaller font size
    padding: ".rem", // Comfortable padding
    margin: "", // No margin for the input
    backgroundColor: "B", // Background to match the container
    border: "px solid ", // Subtle border
    borderRadius: "px", // Matching the container's border radius
    color: "FFF", // Text color
    marginRight: ".rem", // Space between input and button
}

const submitButtonStyle = {
    fontSize: "px", // Matching font size with the input
    padding: ".rem .rem", // Padding similar to the input
    backgroundColor: "CED", // Bright accent color for the button
    color: "FFF", // Text color
    border: "none", // No border
    borderRadius: "px", // Matching the container's border radius
    cursor: "pointer", // Cursor for button
    fontWeight: "bold", // Bold font weight for the button text
}

const responseText = {
    textAlign: "center", // Center the response text
    color: "FCEAE", // Color for the response message
    fontSize: "px", // Consistent font size
    marginTop: "rem", // Space above the response text
}

const labelStyle = {
    textAlign: "center", // Center align text
    color: "FFF", // Text color
    fontSize: "px", // Font size
    marginBottom: "rem", // Space below the label
}

```

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feeeb-ad-ab-de-dbd%FUntitled.png?table=block&id=d-a---ccacb&cache=v)

 Setting Up the Latenode Scenario and Sending Email

\. In the scenario created on the platform, add a Trigger on Webhook node. After adding, copy the URL address. You can run the node once to view the output data.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbccc-ba-e-b-abdba%FUntitled.png?table=block&id=d-a-d-be-fadeae&cache=v)

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbac-fa-ec-f-cb%FUntitled.png?table=block&id=d-a--ae-eabcffefd&cache=v)

\. Replace `You_URL` in the Framer form code with the URL address of the Trigger on Webhook node.

️

Remember, the Production-branch of the scenario is initiated by a request sent to the Production-version URL of the Trigger on Webhook node. The Development-branch of the scenario is initiated by a request sent to the Development-version URL of the Trigger on Webhook node.

\. After adding the URL address, fill in the field with a test email address and click the Signup button.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fbdeed-e-a-a-fcabb%FUntitled.png?table=block&id=d-a--cb-ccaded&cache=v)

\. Once you click the Signup button, the Trigger on Webhook node will execute, and the output data will include the provided email address.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Ff-f-af-cc-faddaa%FUntitled.png?table=block&id=d-a--a-dacaa&cache=v)

\. To record the received email address in a Google Sheet, add an Add Single Row node and configure it:

- Create or select an existing authorization.

- Choose the desired Google Sheet and sheet tab.

- Select the parameter from the previous node for the Values field in the auxiliary window.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fb-d-df-b-fed%FUntitled.png?table=block&id=d-a-b-e-dbedfd&cache=v)

The result of the scenario execution is that the email address entered in the Framer form is recorded in a cell of the Google Sheet.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdc-fd-a-ae-aecebcad%FUntitled.png?table=block&id=d-a--c-fccdb&cache=v)

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feec-ca-cb-ba-fbfda%FUntitled.png?table=block&id=d-a--ae-eafcbc&cache=v)