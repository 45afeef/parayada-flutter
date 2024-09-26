import 'package:flutter/material.dart';

class SimpleImageCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String? caption;

  const SimpleImageCard({
    super.key,
    required this.imageUrl,
    required this.name,
    this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: 120,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            height: 150,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              child: Hero(
                tag: "$name $imageUrl",
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Hero(
            tag: name,
            child: Text(
              name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          if (caption != null)
            Text(
              caption!,
              softWrap: true,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[600],
                fontWeight: FontWeight.w200,
              ),
            ),
        ],
      ),
    );
  }
}
