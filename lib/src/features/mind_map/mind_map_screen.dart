import 'package:flutter/material.dart';

import '../../widgets/laytout.dart';
import 'domain/mind_map.dart';
import 'presentation/mind_map_accordion.dart';

Map<String, dynamic> mindmapjson = {
  "name": "The mind map name",
  "caption": "This is the caption of the entire mind map",
  "rootNode": {
    "name": "Node1",
    "description": "This is the description for Node1.",
    "image": "image_url_for_Node1.jpg",
    "excerpt": "This is an excerpt for Node1.",
    "connectedNodes": [
      {
        "name": "Node2",
        "description": "This is the description for Node2.",
        "image": "image_url_for_Node2.jpg",
        "excerpt": "This is an excerpt for Node2.",
        "connectedNodes": [
          {
            "name": "Node6",
            "image": "image_url_for_Node6.jpg",
            "excerpt": "This is an excerpt for Node6.",
            "connectedNodes": []
          },
          {
            "name": "Node7",
            "description": "This is the description for Node7.",
            "image": "image_url_for_Node7.jpg",
            "excerpt": "This is an excerpt for Node7.",
            "connectedNodes": [
              {
                "name": "Node1",
                "description": "This is the description for Node1.",
                "image": "image_url_for_Node1.jpg",
                "excerpt": "This is an excerpt for Node1.",
                "connectedNodes": [
                  {
                    "name": "Node2",
                    "description": "This is the description for Node2.",
                    "image": "image_url_for_Node2.jpg",
                    "excerpt": "This is an excerpt for Node2.",
                    "connectedNodes": []
                  },
                  {
                    "name": "Node3",
                    "description": "This is the description for Node3.",
                    "image": "image_url_for_Node3.jpg",
                    "excerpt": "This is an excerpt for Node3.",
                    "connectedNodes": [
                      {
                        "name": "Node4",
                        "description": "This is the description for Node4.",
                        "image": "image_url_for_Node4.jpg",
                        "excerpt": "This is an excerpt for Node4.",
                        "connectedNodes": []
                      }
                    ]
                  },
                  {
                    "name": "Node5",
                    "description": "This is the description for Node5.",
                    "image": "image_url_for_Node5.jpg",
                    "excerpt": "This is an excerpt for Node5.",
                    "connectedNodes": []
                  }
                ]
              }
            ]
          }
        ]
      },
      {
        "name": "Node3",
        "description": "This is the description for Node3.",
        "image": "image_url_for_Node3.jpg",
        "excerpt": "This is an excerpt for Node3.",
        "connectedNodes": [
          {
            "name": "Node8",
            "description": "This is the description for Node8.",
            "image": "image_url_for_Node8.jpg",
            "excerpt": "This is an excerpt for Node8.",
            "connectedNodes": []
          },
          {
            "name": "Node9",
            "description": "This is the description for Node9.",
            "image": "image_url_for_Node9.jpg",
            "excerpt": "This is an excerpt for Node9.",
            "connectedNodes": []
          }
        ]
      },
      {
        "name": "Node4",
        "description": "This is the description for Node4.",
        "image": "image_url_for_Node4.jpg",
        "excerpt": "This is an excerpt for Node4.",
        "connectedNodes": [
          {
            "name": "Node10",
            "description": "This is the description for Node10.",
            "image": "image_url_for_Node10.jpg",
            "excerpt": "This is an excerpt for Node10.",
            "connectedNodes": []
          }
        ]
      },
      {
        "name": "Node5",
        "description": "This is the description for Node5.",
        "image": "image_url_for_Node5.jpg",
        "excerpt": "This is an excerpt for Node5.",
        "connectedNodes": [
          {
            "name": "Node11",
            "description": "This is the description for Node11.",
            "image": "image_url_for_Node11.jpg",
            "excerpt": "This is an excerpt for Node11.",
            "connectedNodes": []
          }
        ]
      }
    ]
  }
};

class MindMapScreen extends StatelessWidget {
  const MindMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      child: Center(
        child: MindMapAccordion(
          mindMap: MindMap.fromJson(mindmapjson),
        ),
      ),
    );
  }
}
