---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/nvidia-canary-b/kEYxeVUghWoptwCTaw"
title: "NVIDIA Canary-B – Latenode | Help Center"
---

 NVIDIA Canary-B

An AI model for speech recognizing.


![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%F-e-af-bddc-dad%FUntitled.png?table=block&id=d-a-c-abe-ffaffde&cache=v)

 Node Description

NVIDIA Canary-B (Free Preview) an action-type node required to generate text based on the content of an mp, .ma audio file.



See the example of using AI Speech-To-Text group nodes

Artificial Intelligence (AI) tools and technologies that convert audio files into text are in demand in various fields. Here are some examples of their use:

- transcribing interviews, video tutorials, lectures, etc.

- converting speech from video to text subtitles. This is useful for those who prefer to read text instead of watching a video or those who do not speak the original language of the video.

- recording conversations with customers in business and telecommunications, to provide better customer service and increase efficiency.

 Node Configuration

To configure the NVIDIA Canary-B (Free Preview) node, you must complete the required and optional fields. Required fields include:

- File;

- Source language;

- Destination language.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feefbf-fb-f-d-fbafdff%FUntitled.png?table=block&id=d-a-f-b-fdcabc&cache=v)

 File

Field for specifying the content of an mp, .ma audio file. The file can be passed to the scenario using the Trigger on Webhook node. The content in this case will be specified in the File field in the format file.\[\].content.

 Source language

A drop-down list with a list of languages. In the field you should select the language in which the audio file is recorded. Available languages:

- English;

- German;

- French;

- Spanish.

 Destination language

A drop-down list with a list of languages. In the field you should select the language to be used when translating the audio file. Available languages:

- English;

- German;

- French;

- Spanish.

 Keep Punctuation

Switch to save punctuation.

 Async

A switch to define the node's algorithm.

If enabled, the response will be returned by the node immediately, even if the information has not yet been processed. The node output will include the status _Initial_ or _Started_.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fca-df-cd-d-fffeafd%FUntitled.png?table=block&id=d-a-b--eacd&cache=v)

If the parameter is off, the response will only be returned when the information has been processed. The output of the node will contain the result and the status _Completed_.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fdcb-b-adc-fa-dbbc%FUntitled.png?table=block&id=d-a-a-bbc-fbecbb&cache=v)

 NVIDIA Canary-B - Check result

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fedca-ff-ea-f-acfbbea%FUntitled.png?table=block&id=d-a--be-ccec&cache=v)

 Node Description

NVIDIA Canary-B - Check result (Free Preview) an action-type node required to retrieve text generated from the content of an mp, .ma audio file. The result is identified by an identifier that is present among other output from the NVIDIA Canary-B (Free Preview) node. The NVIDIA Canary-B - Check result (Free Preview) node can be useful if the NVIDIA Canary-B (Free Preview) node executes immediately without waiting for the translation to be generated, i.e. the Async option is checked.



See the example of using AI Speech-To-Text group nodes

Artificial Intelligence (AI) tools and technologies that convert audio files into text are in demand in various fields. Here are some examples of their use:

- transcribing interviews, video tutorials, lectures, etc.

- converting speech from video to text subtitles. This is useful for those who prefer to read text instead of watching a video or those who do not speak the original language of the video.

- recording conversations with customers in business and telecommunications, to provide better customer service and increase efficiency.

 Node Configuration

To configure the NVIDIA Canary-B - Check result (Free Preview) node, the required Task Id (UUID) field must be filled in.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feadd-ec-cdc-bf-cfbdbdf%FUntitled.png?table=block&id=d-a--a-cdcef&cache=v)

 Task Id (UUID)

Field for entering the ID of the audio file translation task. The identifier can be entered manually or can be a parameter of the NVIDIA Canary-B (Free Preview) node.