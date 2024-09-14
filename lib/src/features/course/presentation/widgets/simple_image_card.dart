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
    return SizedBox(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            height: 150,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            name,
            softWrap: false,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          if (caption != null)
            Text(
              caption!,
              softWrap: false,
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
