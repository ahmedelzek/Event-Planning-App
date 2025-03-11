import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const OnboardingPage(
      {super.key,
      required this.title,
      required this.description,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(imagePath,
              height: 300,
              width: 300,
            ),
             Text(
                textAlign: TextAlign.start,
                title,
                style: Theme.of(context).textTheme.labelLarge,
              ),
             Text(
                  textAlign: TextAlign.start,
                  description,
                  style: Theme.of(context).textTheme.bodyLarge),
          ]),
    );
  }
}
