import 'package:flutter/material.dart';

import '../core/constants/image_constant.dart';

class AppLayout extends StatelessWidget {
  const AppLayout({
    super.key,
    this.child,
    this.title,
  });

  final Widget? child;
  final Widget? title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar:
          true, // Ensures the body extends behind where the AppBar would be
      appBar: AppBar(
        title: title,
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent, // Makes AppBar transparent
        elevation: 0, // Removes shadow from the AppBar
        leading: Container(), // Empty container to remove back button
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImageConstant.backgroundImages[1]),
            fit: BoxFit.cover, // Covers the entire widget area
          ),
        ),
        child: child,
      ),
    );
  }
}
