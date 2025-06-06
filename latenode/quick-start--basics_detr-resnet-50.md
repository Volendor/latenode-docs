---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/detr-resnet-/kEYxeVVWFZKURXGMkLn"
title: "detr-resnet- – Latenode | Help Center"
---

 detr-resnet-

Object detection model for analyzing images.


 Node Description

detr-resnet- (preview) \- action type node needed to detect objects in images.



Model ID: `@cf/facebook/detr-resnet-`. This model takes an image as input and returns a list of detected objects, each containing a label, a probability estimate, and the coordinates of its surrounding rectangle. DEtection TRansformer (DETR) model trained on COCO  end-to-end object detection (k annotated images).

  

AI Object Detection is a technology related to computer vision and image processing that consists of detecting objects of certain classes in digital images. Here are examples of how the technology is being used:

\. Security and video surveillance: detecting suspicious objects in public places or monitoring traffic. Recognizing pedestrians, cars, etc.

\. Industry and logistics: inspection of production lines for quality control or tracking goods and optimizing warehouse operations.

\. Retail: analyzing customer behavior and preferences.

\. Medicine: analyzing medical images to diagnose diseases.

\. Smart Home and Robotics: recognizing people, objects and actions to automate household tasks.

  

 Node Configuration

The required Image field is required to configure the detr-resnet- (preview) node.

 Image

Field for entering image file content in the format `.body.files.[].content`.

️

Content is one of the output parameters of nodes that work with files. A file can also be transferred to the Trigger on Webhook node address.

 Example of launching a node

To process the image and get the list of objects, let's add two nodes to the scenario:

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Febbb-f-e--defe%FUntitled.png?table=block&id=d-a-f-da-eaf&cache=v)

\. Trigger on Webhook node to start the scenario and transfer the file to the scenario;

\. Node detr-resnet- (preview) to detect objects in the image.

![Notion Image](https://www.notion.so/image/https%A%F%Fprod-files-secure.s.us-west-.amazonaws.com%Ffbefde--fff--dca%Fd-e-ba-d-ffbfe%FUntitled.png?table=block&id=d-a-ed-cb-ccbae&cache=v)

The result of the node execution is JSON:

- with action execution status `"success": true;`

- with detected objects `"success"`, where `"box"` is the coordinates of the segment with the image, `"score"` is the confidence level of the model that the detected object is really present in the image, `"label"` is the name of the object.

JSON (abridged version)

```
{
  "result": {
    "errors": [],
    "messages": [],
    "result": [\
      {\
        "box": {\
          "xmax": ,\
          "xmin": ,\
          "ymax": ,\
          "ymin": \
        },\
        "label": "car",\
        "score": .\
      },\
      {\
        "box": {\
          "xmax": ,\
          "xmin": ,\
          "ymax": ,\
          "ymin": \
        },\
        "label": "car",\
        "score": .\
      },\
      {\
        "box": {\
          "xmax": ,\
          "xmin": ,\
          "ymax": ,\
          "ymin": \
        },\
        "label": "person",\
        "score": .\
      },\
      {\
        "box": {\
          "xmax": ,\
          "xmin": ,\
          "ymax": ,\
          "ymin": \
        },\
        "label": "person",\
        "score": .\
      },\
      {\
        "box": {\
          "xmax": ,\
          "xmin": ,\
          "ymax": ,\
          "ymin": \
        },\
        "label": "traffic light",\
        "score": .\
      },\
      {\
        "box": {\
          "xmax": ,\
          "xmin": ,\
          "ymax": ,\
          "ymin": \
        },\
        "label": "traffic light",\
        "score": .\
      },\
      {\
        "box": {\
          "xmax": ,\
          "xmin": ,\
          "ymax": ,\
          "ymin": \
        },\
        "label": "car",\
        "score": .\
      },\
				...\
      {\
        "box": {\
          "xmax": ,\
          "xmin": ,\
          "ymax": ,\
          "ymin": \
        },\
        "label": "truck",\
        "score": .\
      }\
    ],
    "success": true
  }
}
```