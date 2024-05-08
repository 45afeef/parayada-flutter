import 'package:flutter/material.dart';
import 'package:parayada_ui_collection/duolingo/icon_button.dart';

import '../../core/app_export.dart';

class LevelsScreen extends StatefulWidget {
  const LevelsScreen({super.key});

  @override
  State<LevelsScreen> createState() => _LevelsScreenState();
}

class _LevelsScreenState extends State<LevelsScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar:
          true, // Ensures the body extends behind where the AppBar would be
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Makes AppBar transparent
        elevation: 0, // Removes shadow from the AppBar
        leading: Container(), // Empty container to remove back button
      ),
      body: InkWell(
        onTap: () => setState(() {
          index = (index + 1) % 4;
        }),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImageConstant.backgroundImages[index]),
              fit: BoxFit.cover, // Covers the entire widget area
            ),
          ),
          child: Center(
            child: ListWheelScrollView(
              itemExtent: 112,
              children: [
                ...List.generate(
                    50,
                    (index) => Container(
                          margin: const EdgeInsets.all(16),
                          width: 80,
                          height: 80,
                          child: DuolingoIconButton(
                            child: Align(child: Text('${index + 1}')),
                            onPressed: () {},
                          ),
                        )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
