import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../domain/mind_map.dart';

class MindMapAccordion extends StatelessWidget {
  final MindMap mindMap;

  const MindMapAccordion({super.key, required this.mindMap});

  @override
  Widget build(BuildContext context) {
    return Accordion(
      maxOpenSections: 1, // Automatically close sections when opening a new one
      children: [
        AccordionSection(
          header: Padding(
            padding: SizeConstant.largePadding,
            child: Text(mindMap.name),
          ), // Customize the header
          headerBackgroundColor: Colors.green,

          content: Column(
            children: [
              // Display the content for the root node
              Text('Name: ${mindMap.rootNode.name}'),
              if (mindMap.rootNode.description != null)
                Text('Description: ${mindMap.rootNode.description}'),
              // Add more content as needed
              // Recursively build the child nodes
              ..._buildChildNodes(mindMap.rootNode.connectedNodes),
            ],
          ),
        ),
      ],
    );
  }

  List<Accordion> _buildChildNodes(List<MindMapNode> nodes) {
    return nodes.map((node) {
      return Accordion(
        maxOpenSections: 1,
        children: [
          AccordionSection(
            header: Padding(
              padding: SizeConstant.smallPadding,
              child: Text(node.name),
            ), // Customize the header for each node
            headerBackgroundColor: ColorConstant.amber700,
            content: Column(
              children: [
                // Display the content for each node
                if (node.description != null) Text('${node.description}'),
                // Add more content as needed
                ..._buildChildNodes(node.connectedNodes)
              ],
            ),
          ),
        ],
      );
    }).toList();
  }
}
