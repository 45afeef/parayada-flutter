import '../../content/domain/content.dart';

class MindMapNode extends Content {
  final String name;
  final List<MindMapNode> children;
  final String? description;
  final String? image;
  final String? excerpt;

  MindMapNode({
    required this.name,
    required this.children,
    this.description,
    this.image,
    this.excerpt,
  });
}

class MindMap extends Content {
  final String name;
  final MindMapNode rootNode;
  final String? caption;

  MindMap(this.name, this.rootNode, this.caption);
}
