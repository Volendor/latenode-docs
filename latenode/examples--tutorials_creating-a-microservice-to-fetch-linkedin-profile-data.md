---
url: "https://help.latenode.com/examples--tutorials/tABeZhtHciqyguBRY/creating-a-microservice-to-fetch-linkedin-profile-data/eHdUXtpgbTdRRauNAaA"
title: "Creating a Microservice to Fetch LinkedIn Profile Data – Latenode | Help Center"
---

 Creating a Microservice to Fetch LinkedIn Profile Data

Building a microservice to retrieve LinkedIn profile details.



In this tutorial, you'll learn how to create a microservice that retrieves information from a LinkedIn profile URL. By the end, you'll have a working API that dynamically fetches and responds with profile data.

Automate Your LinkedIn Insights: Build a Dynamic Profile Scraper API - YouTube

[Photo image of Latenode](https://www.youtube.com/channel/UCCGRBRFERVidCYtKnBA?embeds_referring_euri=https%A%F%Fhelp.latenode.com%F)

Latenode

.K subscribers

[Automate Your LinkedIn Insights: Build a Dynamic Profile Scraper API](https://www.youtube.com/watch?v=SxSWIViKAFo)

Latenode

If playback doesn't begin shortly, try restarting your device.

 More videos

You're signed out

Videos you watch may be added to the TV's watch history and influence TV recommendations. To avoid this, cancel and sign in to YouTube on your computer.

Share

Include playlist

An error occurred while retrieving sharing information. Please try again later.

[Watch on](https://www.youtube.com/watch?v=SxSWIViKAFo&embeds_referring_euri=https%A%F%Fhelp.latenode.com%F)

:

: / :
•

[Watch on YouTube](https://www.youtube.com/watch?v=SxSWIViKAFo "Watch on YouTube")

  

 Step : Setting Up LinkedIn Data Scraper

. Add the LinkedIn Data Scraper node to your workflow.

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Ffebc-dc--f-daebfd.png?table=block&id=ad-a--ba-fdc&cache=v)

. Select the action Get Profile Data by URL.

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Ffaa-d-c-b-abcda.png?table=block&id=ad-a--bd-fcc&cache=v)

. Enter the LinkedIn profile URL in the designated field.

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Ffdd-be-d-d-acefe.png?table=block&id=ad-a-c-eab-fdceb&cache=v)

. Run the workflow to test it. Wait a few seconds to get the result. You'll see:

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Ffad-f-cc-e-adacc.png?table=block&id=ad-a-bd-a-cbaef&cache=v)

\\- Name

\\- Location

\\- Job titles

\\- Other profile details

  

 Step : Converting the Workflow into a Microservice

. Replace the current TriggerNode with TriggerOnWebHook.

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Ffaf-a-e-c-bccf.png?table=block&id=ad-a-f-afb-edfd&cache=v)

. This change generates a URL for the workflow. Copy the URL.

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Fdad-e-fdd-af-ffc.png?table=block&id=ad-a--bca-dfb&cache=v)

. Save and deploy the microservice.

. Test the microservice by calling it using the generated URL. You'll see a "Request accepted" message.

. Check the history to view the external call and inspect the input parameters. Currently, there are no parameters.

  

 Step : Customizing the Microservice Response

. Add the Webhook Response node to the workflow.

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Feaa-e-fd-ad-be.png?table=block&id=ad-a--ac-eaae&cache=v)

. Pass the desired response content to this node. In this case, include the entire "Response" section, as it contains all the useful information.

. Select Response and save the changes.

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Fb-a--be-cefaab.png?table=block&id=ad-a-d-bab-fffd&cache=v)

. Deploy the microservice and ensure it's active.

. Call the microservice to verify the result. You'll receive a JSON response with complete profile information.

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Fff-df-c-eaa-bacedcdb.png?table=block&id=ad-a-b-d-ffb&cache=v)

  

 Step : Making the Profile URL Dynamic

. Currently, the profile URL is hardcoded. To make it dynamic:

\\- Add a get parameter named "profile".

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Faaee--a-bd-edfe.png?table=block&id=ad-a-b-adb-feef&cache=v)

. Replace the static URL with the dynamic parameter.

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Fad-a-aa-aef-aafac.png?table=block&id=ad-a-e-b-cbaf&cache=v)

. Test the microservice by calling it with the new parameter.

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Fbe--cfc-acf-afcefb.png?table=block&id=ad-a--cd-ddbfcf&cache=v)

. Wait for the response.

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Ffed-c--b-ddfc.png?table=block&id=ad-a--a-cabbcbc&cache=v)

. Check the history to view the incoming parameter.

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Fcdee-bc-bf-ab-fabbcbb.png?table=block&id=ad-a--ba-dbdfad&cache=v)

\\- Inspect the last call to see the input parameter containing the profile URL.

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Fdbf--df-b-dac.png?table=block&id=ad-a--ef-ebddb&cache=v)

. Replay the scenario to load the data into the editor. Replace the static URL with the dynamic one from the input.

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Fd-cc--e-edaccf.png?table=block&id=ad-a-ee-dd-cfaecea&cache=v)

. Save and deploy the changes. Now, the microservice dynamically updates the profile URL based on the input.

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Fde-fec--acf-acff.png?table=block&id=ad-a--a-caef&cache=v)

  

 Step : Testing with a Different Profile

. Call the microservice with a different profile, such as Chris's, by passing it as a get parameter.

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Ffddbbbed-c-a-d-acada.png?table=block&id=ad-a--a-fed&cache=v)

. Verify the result. You'll see detailed information about Chris's profile.

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Fdae-ec-e-aca-ddebcc.png?table=block&id=ad-a-a-abff-cdfabf&cache=v)

. Review all the parameters in the response.

![Notion Image](https://www.notion.so/image/https%A%F%Fusercontent.clueso.io%Fefb-c-d-d-eaacf%Faacf--c-ee-daf%Fdfb--c-ba-fecc%Fimages%Fbac-d-dd--dded.png?table=block&id=ad-a--d-fecbd&cache=v)

  

Your microservice is now ready to use!