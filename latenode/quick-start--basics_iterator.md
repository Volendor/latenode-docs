---
url: "https://help.latenode.com/quick-start--basics/DTZDaghBEhShCXpUH/iterator/kEYxeVSRmkQjGdJKaC"
title: "Iterator – Latenode | Help Center"
---

 Iterator

Processing multiple data items sequentially.


![Notion Image](https://www.notion.so/image/https%A%F%Fs-us-west-.amazonaws.com%Fsecure.notion-static.com%Fdcec-ed-cc-a-dbbda%FUntitled.png?table=block&id=d-a--a-fccceae&cache=v)

 Node Description

Iterator \- an action-type node used for sequential processing of received data elements. The input parameters for the Iterator node can be:

- JSON objects: In this case, each Key-Value pair will participate in the iteration;

- JSON arrays: In this case, each array element will participate in the iteration.



You can watch a training video [here](https://www.youtube.com/watch?v=qlNoPncjg).

 Node Configuration

To configure the Iterator node, you need to fill in the Data to iterate field. The data can be either input values or the output data and parameters from previous nodes.

![Notion Image](https://www.notion.so/image/attachment%Af-cd-fc-ef-ecde%Achrome_acEpFcXIe.png?table=block&id=bfd-a-eb--cfe&cache=v)

The top connection point of the Iterator node is used to attach the node(s) whose execution will be repeated as many times as there are elements in the array or parameters. After completing the iterations, the scenario execution will continue through the right lateral connection of the Iterator node.

️

The node attached to the Iterator node via the lateral connection point will be executed only once.

 Simple iterator example