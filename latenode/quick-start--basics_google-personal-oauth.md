---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/google-personal-oauth/kwJFUDKeUaBACsTnNLB"
title: "Google Personal Oauth – Latenode | Help Center"
---

 Google Personal Oauth

Connecting and authorizing Google services for automation.



 Create and configure a Google Cloud Platform project for Google Personal Oauth

Notes:



You need to follow the procedure if you use an email address that ends with `@gmail` or `@googlemail`.
To create a new project or work in the existing one, you need to have the `serviceusage.services.enable` permission. If you don’t have this permission, ask the Google Cloud Platform Project Owner or Project IAM Admin to grant it to you.

To connect to Latenode using your own client credentials, you can create and configure a project in the Google Cloud Platform.

 Create a Google Cloud Platform project for Google Drive

To create a Google Cloud Platform project:

. Log in to the Google Cloud Platform using your Google credentials.

. On the welcome page, click Create or select a project > New project. If you already have a project, proceed to the step .

![Notion Image](https://www.notion.so/image/attachment%Aed-efe-cb-bfa-c%Aimage.png?table=block&id=bd-a-c-bfa-fbfadeed&cache=v)

. Enter a Project name and select the Location for your project.

. Click Create.

. In the top menu, check if your new project is selected in the Select a project dropdown. If not, select the project you just created.


![Notion Image](https://www.notion.so/image/attachment%Aeecfee--bde-aa-fbdd%Aimage.png?table=block&id=bd-a-d-f-fdbeba&cache=v)

 To enable the required API

. Open the left navigation menu and go to APIs & Services > Library.

. Search for the following required APIs: e.g Google Drive API.

. Click Google Drive API (or any other service API you need), then click Enable. If you see the Manage button instead of the Enable button, you can proceed to the next step: the API is already enabled.

![Notion Image](https://www.notion.so/image/attachment%Afbdf-e--b-feffbedc%Aimage.png?table=block&id=bd-a-e-abf-feefdd&cache=v)

 Configure your OAuth consent screen for Google Drive

To configure your OAuth consent screen:

\. In the left sidebar, click Google Auth Platform.

. Click Get Started.

. In the Overview section, under App information, enter Latenode as the app name and provide your Gmail address. Click Next.

. Under Audience, select External. Click Next.



For more information regarding user types, refer to [Google's Exceptions to verification requirements documentation](https://support.google.com/cloud/answer/exceptions-ver-reqts).

. Under Contact Information, enter your Gmail address. Click Next.

. Under Finish, agree to the Google User Data Policy.

. Click Continue > Create.

. Click Create OAuth Client.

. In the Branding section, under Authorized domains, add [`app.latenode.com`](https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/google-personal-oauth/app.latenode.com). Click Save.

. Optional: In the Audience section, add your Gmail address on the Test users page, then click Save and continue if you want the project to remain in the Testing publishing status. Read the note below to learn more about the publishing status.

. In the Data Access section, click Add or remove scopes, add the following scopes (please find table below with service reference).

You can add scopes using:

- A table with filters:


![Notion Image](https://www.notion.so/image/attachment%Abcca-cc--ba-cbe%Aimage.png?table=block&id=bd-a-c-adf-ffdbfadf&cache=v)

- A window to manually enter scopes:

![Notion Image](https://www.notion.so/image/attachment%Aaeb-aee-ea-bf-ef%Aimage.png?table=block&id=bd-a--b-edfc&cache=v)

. Click Update.

. Click Save.

 Create your Google OAuth client credentials

To create your client credentials:

\. In Google Auth Platform, click Clients.
\. Click \+ Create Client.

. In Google Auth Platform, click Clients.

. Click \+ Create Client.

. In the Application type dropdown, select Web application.

. Update the Name of your OAuth client. This will help you identify it in the platform.

. In the Authorized redirect URIs section, click \+ Add URI and enter the following redirect URI: [https://app.latenode.com/redirected/index.html](https://app.latenode.com/redirected/index.html).

. Click Create.

. Click the OAuth . Client you created, copy your Client ID and Client secret values, and store them in a safe place.

![Notion Image](https://www.notion.so/image/attachment%Ade-cb--f-fbfccdefb%Aimage.png?table=block&id=bd-a-f-af-feffcdaf&cache=v)

You will use these values in the Client ID and Client Secret fields in Latenode.

 Establish the connection in Latenode

. Log in to your Latenode account, add a nodule to your scenario, and click Create an authorization → New authorization → Personal App Google <Service> Oauth .

. Optional: In the Connection name field, enter a name for the connection.

. Enter your Client ID and Client secret that you created in the previous section.

. Click Sign in with Google.

. If prompted, authenticate your account, grant all requested permissions, and confirm access.

You have successfully established the connection. You can now edit your scenario and add more Google nodules.

 Required scopes for your connection

|     |     |
| --- | --- |
| Google Oauth | Scopes |
| Gmail | [https://www.googleapis.com/auth/userinfo.email](https://www.googleapis.com/auth/userinfo.email) [https://mail.google.com/](https://mail.google.com/) |
| Google Calendar | [https://www.googleapis.com/auth/userinfo.email](https://www.googleapis.com/auth/userinfo.email) [https://www.googleapis.com/auth/calendar](https://www.googleapis.com/auth/calendar) [https://www.googleapis.com/auth/calendar.readonly](https://www.googleapis.com/auth/calendar.readonly) [https://www.googleapis.com/auth/calendar.events.owned](https://www.googleapis.com/auth/calendar.events.owned) [https://www.googleapis.com/auth/calendar.settings.readonly](https://www.googleapis.com/auth/calendar.settings.readonly) |
| Google Analytics | [https://www.googleapis.com/auth/userinfo.email](https://www.googleapis.com/auth/userinfo.email) [https://www.googleapis.com/auth/cloud-platform](https://www.googleapis.com/auth/cloud-platform) [https://www.googleapis.com/auth/cloud-platform.read-only](https://www.googleapis.com/auth/cloud-platform.read-only) [https://www.googleapis.com/auth/analytics](https://www.googleapis.com/auth/analytics) [https://www.googleapis.com/auth/analytics.edit](https://www.googleapis.com/auth/analytics.edit) [https://www.googleapis.com/auth/analytics.manage.users](https://www.googleapis.com/auth/analytics.manage.users) [https://www.googleapis.com/auth/analytics.manage.users.readonly](https://www.googleapis.com/auth/analytics.manage.users.readonly) [https://www.googleapis.com/auth/analytics.provision](https://www.googleapis.com/auth/analytics.provision) [https://www.googleapis.com/auth/analytics.readonly](https://www.googleapis.com/auth/analytics.readonly) [https://www.googleapis.com/auth/analytics.user.deletion](https://www.googleapis.com/auth/analytics.user.deletion) |
| Google Ads | [https://www.googleapis.com/auth/userinfo.email](https://www.googleapis.com/auth/userinfo.email) [https://www.googleapis.com/auth/adwords](https://www.googleapis.com/auth/adwords) |
| Google BigQuery | [https://www.googleapis.com/auth/userinfo.email](https://www.googleapis.com/auth/userinfo.email) [https://www.googleapis.com/auth/bigquery](https://www.googleapis.com/auth/bigquery) [https://www.googleapis.com/auth/bigquery.insertdata](https://www.googleapis.com/auth/bigquery.insertdata) [https://www.googleapis.com/auth/bigquery.readonly](https://www.googleapis.com/auth/bigquery.readonly) [https://www.googleapis.com/auth/cloud-platform](https://www.googleapis.com/auth/cloud-platform) [https://www.googleapis.com/auth/cloud-platform.read-only](https://www.googleapis.com/auth/cloud-platform.read-only) |
| Google Cloud Dialogflow | [https://www.googleapis.com/auth/cloud-platform.read-only](https://www.googleapis.com/auth/cloud-platform.read-only) [https://www.googleapis.com/auth/cloud-platform](https://www.googleapis.com/auth/cloud-platform) [https://www.googleapis.com/auth/dialogflow](https://www.googleapis.com/auth/dialogflow) |
| Google Cloud Firestore | [https://www.googleapis.com/auth/userinfo.email](https://www.googleapis.com/auth/userinfo.email) [https://www.googleapis.com/auth/cloud-platform](https://www.googleapis.com/auth/cloud-platform) [https://www.googleapis.com/auth/datastore](https://www.googleapis.com/auth/datastore) |
| Google Cloud Speech-to-Text/Text-to-Speech | [https://www.googleapis.com/auth/userinfo.email](https://www.googleapis.com/auth/userinfo.email) [https://www.googleapis.com/auth/cloud-platform](https://www.googleapis.com/auth/cloud-platform) |
| Google Cloud Translate | [https://www.googleapis.com/auth/userinfo.email](https://www.googleapis.com/auth/userinfo.email) [https://www.googleapis.com/auth/cloud-translation](https://www.googleapis.com/auth/cloud-translation) [https://www.googleapis.com/auth/cloud-platform](https://www.googleapis.com/auth/cloud-platform) |
| Google Contacts | [https://www.googleapis.com/auth/contacts.other.readonly](https://www.googleapis.com/auth/contacts.other.readonly) [https://www.googleapis.com/auth/contacts.readonly](https://www.googleapis.com/auth/contacts.readonly) [https://www.googleapis.com/auth/contacts](https://www.googleapis.com/auth/contacts) openid [https://www.googleapis.com/auth/userinfo.profile](https://www.googleapis.com/auth/userinfo.profile) [https://www.googleapis.com/auth/userinfo.email](https://www.googleapis.com/auth/userinfo.email) |
| Google Docs | [https://www.googleapis.com/auth/userinfo.email](https://www.googleapis.com/auth/userinfo.email) [https://www.googleapis.com/auth/drive](https://www.googleapis.com/auth/drive) [https://www.googleapis.com/auth/drive.readonly](https://www.googleapis.com/auth/drive.readonly) [https://www.googleapis.com/auth/docs](https://www.googleapis.com/auth/docs) [https://www.googleapis.com/auth/drive.file](https://www.googleapis.com/auth/drive.file) |
| Google Drive | [https://www.googleapis.com/auth/userinfo.email](https://www.googleapis.com/auth/userinfo.email) [https://www.googleapis.com/auth/drive](https://www.googleapis.com/auth/drive) [https://www.googleapis.com/auth/drive.readonly](https://www.googleapis.com/auth/drive.readonly) |
| Google Forms | [https://www.googleapis.com/auth/forms.body](https://www.googleapis.com/auth/forms.body) [https://www.googleapis.com/auth/forms.body.readonly](https://www.googleapis.com/auth/forms.body.readonly) [https://www.googleapis.com/auth/forms.responses.readonly](https://www.googleapis.com/auth/forms.responses.readonly) [https://www.googleapis.com/auth/userinfo.email](https://www.googleapis.com/auth/userinfo.email) [https://www.googleapis.com/auth/drive](https://www.googleapis.com/auth/drive) |
| Google Groups | [https://www.googleapis.com/auth/userinfo.email](https://www.googleapis.com/auth/userinfo.email) [https://www.googleapis.com/auth/admin.directory.group](https://www.googleapis.com/auth/admin.directory.group) [https://www.googleapis.com/auth/admin.directory.domain](https://www.googleapis.com/auth/admin.directory.domain) |
| Google Business Profile | email [https://www.googleapis.com/auth/business.manage](https://www.googleapis.com/auth/business.manage) |
| Google Sheets | [https://www.googleapis.com/auth/drive](https://www.googleapis.com/auth/drive) [https://www.googleapis.com/auth/drive.readonly](https://www.googleapis.com/auth/drive.readonly) [https://www.googleapis.com/auth/spreadsheets](https://www.googleapis.com/auth/spreadsheets) [https://www.googleapis.com/auth/user.emails.read](https://www.googleapis.com/auth/user.emails.read) [https://www.googleapis.com/auth/userinfo.email](https://www.googleapis.com/auth/userinfo.email) [https://www.googleapis.com/auth/userinfo.profile](https://www.googleapis.com/auth/userinfo.profile) |
| Google Slides | [https://www.googleapis.com/auth/userinfo.email](https://www.googleapis.com/auth/userinfo.email) [https://www.googleapis.com/auth/drive](https://www.googleapis.com/auth/drive) [https://www.googleapis.com/auth/drive.file](https://www.googleapis.com/auth/drive.file) [https://www.googleapis.com/auth/drive.readonly](https://www.googleapis.com/auth/drive.readonly) [https://www.googleapis.com/auth/presentations](https://www.googleapis.com/auth/presentations) [https://www.googleapis.com/auth/presentations.readonly](https://www.googleapis.com/auth/presentations.readonly) [https://www.googleapis.com/auth/spreadsheets](https://www.googleapis.com/auth/spreadsheets) [https://www.googleapis.com/auth/spreadsheets.readonly](https://www.googleapis.com/auth/spreadsheets.readonly) |
| Google Tasks | [https://www.googleapis.com/auth/userinfo.email](https://www.googleapis.com/auth/userinfo.email) [https://www.googleapis.com/auth/tasks](https://www.googleapis.com/auth/tasks) [https://www.googleapis.com/auth/tasks.readonly](https://www.googleapis.com/auth/tasks.readonly) |