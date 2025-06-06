---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/resnet--preview/kEYxeVUdgfYvZvk"
title: "resnet- (preview) – Latenode | Help Center"
---

 resnet- (preview)

Deep learning model for image recognition.


 Node Description

resnet- (preview) \- action type node needed to classify the provided images and recognize objects in them.



Model ID: `@cf/microsoft/resnet-`. A -layer CNN with deep image classification trained on over  million images from ImageNet.

  

Image classification using CNN (Convolutional Neural Network) is a process where AI learns to recognize and categorize images into specific categories or classes. For example, if we have many images with cats and dogs, CNN can learn to distinguish cats from dogs based on their unique features such as ear shape, size, and color.

AI: Image Classification is a powerful computer vision tool with a wide range of applications in many fields. Here are some of the uses:

\. Object Recognition - image classification allows you to automatically determine which objects are present in an image (e.g., a car, a human face, a plant, etc.).

\. Autonomous Vehicles - image classification is needed to recognize road signs, pedestrians, other vehicles and objects to ensure the safety of self-driving cars.

\. Image segmentation - classification can be used to highlight image regions belonging to specific objects or categories.

\. Image search and organization - classification helps to automatically tag and organize large image databases into categories.

\. Satellite/aerial image processing - image analysis is used for mapping, environmental monitoring, etc.

\. Inspection - classification models are used for automated inspection of product quality in manufacturing or other areas.

  

 Node Configuration

To configure the resnet- (preview) node, the required Image field is required.

 Image

Field for entering image file content in the format `.body.files.[].content`.

️

Content is one of the output parameters of nodes that work with files. A file can also be transferred to the Trigger on Webhook node address.

 Example of launching a node

To obtain image classification, we add two nodes to the scenario:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fea-ce-f-a-fcea%FUntitled.png?table=block&id=d-a--b-ffcffeca&cache=v)

\. Trigger on Webhook node for running the scenario and transferring the file to the scenario;

\. The resnet- (preview) node for processing image content.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%F-fd-be-ed-aedb%FUntitled.png?table=block&id=d-a-a-bb-cdfedb&cache=v)

The output of the scenario is JSON:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fccc--d-d-df%FUntitled.png?table=block&id=d-a-e-a-ceabc&cache=v)

- labeled, e.g., "EGYPTIAN CAT" the class to which the model attributes the image;

- with scores, e.g., . the probability or confidence of the model that the given image really belongs to the class "EGYPTIAN CAT". The higher the score, the higher the model's confidence in the processing result;

- with the action execution status `"success": true`.

JSON

```
{
  "result": {
    "errors": [],
    "messages": [],
    "result": [\
      {\
        "label": "EGYPTIAN CAT",\
        "score": .\
      },\
      {\
        "label": "TIGER CAT",\
        "score": .\
      },\
      {\
        "label": "TABBY",\
        "score": .\
      },\
      {\
        "label": "MADAGASCAR CAT",\
        "score": .\
      },\
      {\
        "label": "TUB",\
        "score": .\
      }\
    ],
    "success": true
  }
}
```