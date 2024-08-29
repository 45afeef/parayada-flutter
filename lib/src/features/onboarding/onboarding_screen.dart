import 'package:flutter/material.dart';
import 'package:parayada_ui_collection/duolingo/button.dart';

import '../../core/app_export.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class OnboardingItem {
  final String image;
  final String title;
  final String description;

  OnboardingItem(
      {required this.image, required this.title, required this.description});
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  static final List<OnboardingItem> items = [
    OnboardingItem(
        image: 'assets/images/backgrounds/1.png',
        title: 'Welcome to Your Health Journey!',
        description:
            'Start your path to a healthier you with personalized nutrition and fitness tracking.'),
    OnboardingItem(
        image: 'assets/images/backgrounds/2.png',
        title: 'Eat Smart, Live Strong',
        description:
            'Discover nutritious meal plans tailored just for you and track your daily intake effortlessly.'),
    OnboardingItem(
        image: 'assets/images/backgrounds/3.png',
        title: 'Your Fitness Companion',
        description:
            'Set and achieve your fitness goals with custom workout suggestions and progress monitoring.'),
    OnboardingItem(
        image: 'assets/images/backgrounds/4.png',
        title: 'Nutrition Insights',
        description:
            'Get detailed analysis of your eating habits and learn how to fuel your body the right way.'),
  ];

  int currentItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar:
          true, // Ensures the body extends behind where the AppBar would be
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(items[currentItemIndex].image),
            fit: BoxFit.cover, // Covers the entire widget area
          ),
        ),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                items[currentItemIndex].title,
                style: const TextStyle(fontSize: 56, color: Colors.black),
              ),
              const SizedBox(height: 10),
              Text(
                items[currentItemIndex].description,
                style: const TextStyle(fontSize: 18, color: Colors.black),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...List.generate(
                      items.length,
                      (index) => Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Container(
                              height: 10,
                              width: index == currentItemIndex ? 40 : 10,
                              decoration: const BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            ),
                          )),
                  const Spacer(),
                  DuolingoButton(
                      color: Colors.amber,
                      child: const Text("Next"),
                      onPressed: () {
                        if (currentItemIndex + 1 == items.length) {
                          PrefUtils().onboardingVisitStatus = true;
                          Get.toNamed(AppRoutes.homeScreen);
                        } else {
                          setState(() => currentItemIndex++);
                        }
                      }),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        )),
      ),
    );
  }
}
