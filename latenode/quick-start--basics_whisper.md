---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/whisper/kEYxeVVTEmLNJuyUeF"
title: "Whisper – Latenode | Help Center"
---

 Whisper

Converting speech to text with OpenAI’s Whisper model.


 Node Description

whisper (preview) \- action type node needed to generate text based on audio file.



Model ID: `@cf/openai/whisper`. Automatic Speech Recognition (ASR) system trained on , hours of supervised multilingual and multitasking data.

  

Automatic Speech Recognition (ASR) is a technology that converts audio speech into text. This technology is used in various applications and scenarios including:

\. Voice Assistants and Voice Control. ASR allows users to interact with devices and programs using their voice, instead of a keyboard or screen. Examples include Siri, Google Assistant, Alexa.

\. Audio and video transcription. ASR helps you automatically create text transcripts of interviews, lectures, meetings, and other audiovisual materials.

\. Subtitling and assisting people with hearing impairments. ASR is used to automatically caption video and audio content in real time.

\. Voice control in systems. ASR allows you to control various systems, devices and applications using your voice, such as controlling a smart home, car, etc.

\. Implementation in contact centers. ASR is used to automatically transcribe conversations with customers, which helps in improving the quality of service.

  

 Node Configuration

The required Audio field is required to configure the whisper (preview) node.

 Audio

Field to enter the content of the audio file in the format `.body.files.[].content`.

️

Content is one of the output parameters of nodes that work with files. A file can also be transferred to the Trigger on Webhook node address.

 Example of launching a node

To get the text generated from the audio file, let's add two nodes to the scenario:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcbec-b-ad-bb-bbeb%FUntitled.png?table=block&id=d-a-e-bf-eabbccc&cache=v)

. Trigger on Webhook node to run the scenario and transfer the audio file to the scenario;

. Whisper (preview) node for processing image content and generating text based on it.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fcd-fd-e-bfa-ecebae%FUntitled.png?table=block&id=d-a-b-bcb-ceacfe&cache=v)

The output of the scenario is JSON:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Feda-af-ce-bc-c%FUntitled.png?table=block&id=d-a--b-fffaa&cache=v)

- with the text `"text"` generated on the basis of the audio file;

- with status `"success": true`;

- transcript of audio in WebVTT (Web Video Text Tracks) format, which is used to add text tracks to video or audio files.

`. --> .` \- A time interval indicating that the text following this time interval should be displayed from . seconds to . seconds.

`Weather.` `You can watch the` \- text that should be displayed at the specified time. In this case it is "Weather. You can watch the".

- with the number of words in the audio file `"word_count":` ``;

- with an array of `words` with start and end time stamps for each word.

JSON (abridged version)

```
{
  "result": {
    "errors": [],
    "messages": [],
    "result": {
      "text": "Weather. You can watch the weatherman on TV to find out what the weather will be like. It might be a nice clear day with no clouds in the sky. The sun might be shining. It could be a cloudy day. Sometimes cloudy days are just dull. On some cloudy days it begins to rain or snow. Some days are rainy. You need a raincoat. I'm Braille and Boots. On a rainy day. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm a Rainy. I'm days are rainy. You need a raincoat. I'm braille and boots on a rainy day. Rain makes the flowers and grass grow. The weather forecast might say that it will be windy. You could have a gentle breeze. It might be very gusty so that the wind pushes you. It is dangerous if the wind is very strong. A hurricane or tornado is very dangerous. Once in a while, the weatherman says, there will be hail. Hailstones are hard, cold palettes of ice that fall from the sky. Sometimes the weatherman will say that there will be snowflaries. Sometimes there is just a light dusting of snow. Sometimes there is a blizzard or a snowstorm. It can be dangerous driving through a blizzard. If there is a lot of snow, the streets have to be plowed. You need a hat, coat, mittens, and boots on a very cold day. Sometimes the weather forecast is wrong. The weatherman might say that it will be a sunny day, but then the clouds come in and it rains. That is not good if you are planning a picnic. I prefer sunny days that are warm but not too hot. I like to feel a gentle breeze to cool me down.",
      "vtt": "WEBVTT\n\n. --> .\nWeather. You can watch the\n\n. --> .\nweatherman on TV to find\n\n. --> .\nout what the weather will\n\n. --> .\nbe like. It might be\n\n. --> .\na nice clear day with\n\n. --> .\nno clouds in the sky.\n\n. --> .\nThe sun might be shining.\n\n. --> .\nIt could be a cloudy\n\n. --> .\nday. Sometimes cloudy days are\n\n. --> .\njust dull. On some cloudy\n\n. --> .\ndays it begins to rain\n\n. --> .\nor snow. Some days are\n\n. --> .\nrainy. You need a raincoat.\n\n. --> .\nI'm Braille and Boots. On\n\n. --> .\na rainy day. I'm a\n\n. --> .\nRainy. I'm a Rainy. I'm\n\n. --> .\na Rainy. I'm a Rainy.\n\n. --> .\nI'm a Rainy. I'm a\n\n. --> .\nRainy. I'm a Rainy. I'm\n\n. --> .\na Rainy. I'm a Rainy.\n\n. --> .\nI'm a Rainy. I'm a\n\n. --> .\nRainy. I'm a Rainy. I'm\n\n. --> .\na Rainy. I'm a Rainy.\n\n. --> .\nI'm a Rainy. I'm a\n\n. --> .\nRainy. I'm a Rainy. I'm\n\n. --> .\na Rainy. I'm a Rainy.\n\n. --> .\nI'm a Rainy. I'm a\n\n. --> .\nRainy. I'm a Rainy. I'm\n\n. --> .\na Rainy. I'm a Rainy.\n\n. --> .\nI'm a Rainy. I'm a\n\n. --> .\nRainy. I'm a Rainy. I'm\n\n. --> .\na Rainy. I'm a Rainy.\n\n. --> .\nI'm a Rainy. I'm a\n\n. --> .\nRainy. I'm a Rainy. I'm\n\n. --> .\na Rainy. I'm a Rainy.\n\n. --> .\nI'm a Rainy. I'm a\n\n. --> .\nRainy. I'm a Rainy. I'm\n\n. --> .\na Rainy. I'm a Rainy.\n\n. --> .\nI'm a Rainy. I'm a\n\n. --> .\nRainy. I'm a Rainy. I'm\n\n. --> .\na Rainy. I'm a Rainy.\n\n. --> .\nI'm a Rainy. I'm a\n\n. --> .\nRainy. I'm a Rainy. I'm\n\n. --> .\na Rainy. I'm a Rainy.\n\n. --> .\nI'm a Rainy. I'm a\n\n. --> .\nRainy. I'm a Rainy. I'm\n\n. --> .\na Rainy. I'm a Rainy.\n\n. --> .\nI'm a Rainy. I'm a\n\n. --> .\nRainy. I'm a Rainy. I'm\n\n. --> .\ndays are rainy. You need\n\n. --> .\na raincoat. I'm braille and\n\n. --> .\nboots on a rainy day.\n\n. --> .\nRain makes the flowers and\n\n. --> .\ngrass grow. The weather forecast\n\n. --> .\nmight say that it will\n\n. --> .\nbe windy. You could have\n\n. --> .\na gentle breeze. It might\n\n. --> .\nbe very gusty so that\n\n. --> .\nthe wind pushes you. It\n\n. --> .\nis dangerous if the wind\n\n. --> .\nis very strong. A hurricane\n\n. --> .\nor tornado is very dangerous.\n\n. --> .\nOnce in a while, the\n\n. --> .\nweatherman says, there will be\n\n. --> .\nhail. Hailstones are hard, cold\n\n. --> .\npalettes of ice that fall\n\n. --> .\nfrom the sky. Sometimes the\n\n. --> .\nweatherman will say that there\n\n. --> .\nwill be snowflaries. Sometimes there\n\n. --> .\nis just a light dusting\n\n. --> .\nof snow. Sometimes there is\n\n. --> .\na blizzard or a snowstorm.\n\n. --> .\nIt can be dangerous driving\n\n. --> .\nthrough a blizzard. If there\n\n. --> .\nis a lot of snow,\n\n. --> .\nthe streets have to be\n\n. --> .\nplowed. You need a hat,\n\n. --> .\ncoat, mittens, and boots on\n\n. --> .\na very cold day. Sometimes\n\n. --> .\nthe weather forecast is wrong.\n\n. --> .\nThe weatherman might say that\n\n. --> .\nit will be a sunny\n\n. --> .\nday, but then the clouds\n\n. --> .\ncome in and it rains.\n\n. --> .\nThat is not good if\n\n. --> .\nyou are planning a picnic.\n\n. --> .\nI prefer sunny days that\n\n. --> .\nare warm but not too\n\n. --> .\nhot. I like to feel\n\n. --> .\na gentle breeze to cool\n\n. --> .\nme down.",
      "word_count": ,
      "words": [\
        {\
          "end": .,\
          "start": .,\
          "word": "Weather."\
        },\
        {\
          "end": .,\
          "start": .,\
          "word": "You"\
        },\
        {\
          "end": .,\
          "start": .,\
          "word": "can"\
        },\
        {\
          "end": .,\
          "start": .,\
          "word": "watch"\
        },\
        {\
          "end": .,\
          "start": .,\
          "word": "the"\
        },\
        {\
          "end": .,\
          "start": .,\
          "word": "weatherman"\
        },\
        {\
          "end": .,\
          "start": .,\
          "word": "on"\
        },\
        {\
          "end": .,\
          "start": .,\
          "word": "TV"\
        },\
        {\
          "end": .,\
          "start": .,\
          "word": "to"\
        },\
        {\
          "end": .,\
          "start": .,\
          "word": "find"\
        },\
        {\
					...\
        {\
          "end": .,\
          "start": .,\
          "word": "down."\
        }\
      ]
    },
    "success": true
  }
}
```