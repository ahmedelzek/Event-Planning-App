import 'package:evently/ui/screens/auth/login/login_screen.dart';
import 'package:evently/ui/utilities/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utilities/shared_preferences.dart';
import 'onboarding_page.dart';

class OnboardingScreen extends StatefulWidget {
  static const String routeName = "onboarding";

  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Widget> _pages = [
    const OnboardingPage(
      title: OnboardingTexts.onboardingTitle1,
      description: OnboardingTexts.onboardingDescription1,
      imagePath: AppImages.onboardingImg1,
    ),
    const OnboardingPage(
      title: OnboardingTexts.onboardingTitle2,
      description: OnboardingTexts.onboardingDescription2,
      imagePath: AppImages.onboardingImg2,
    ),
    const OnboardingPage(
      title: OnboardingTexts.onboardingTitle3,
      description: OnboardingTexts.onboardingDescription3,
      imagePath: AppImages.onboardingImg3,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: null,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 16,
          children: [
            Image.asset(AppImages.headerLogo),
            Expanded(
                child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: _pages,
            )),
            _buildNavigationControls(),
          ],
        ),
      ),
    ));
  }

  Widget _buildNavigationControls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: _currentPage > 0
                      ? Theme.of(context).primaryColor
                      : Colors.grey,
                  width: 1.5)),
          child: IconButton(
            icon: Icon(Icons.arrow_back,
                color: _currentPage > 0
                    ? Theme.of(context).primaryColor
                    : Colors.grey,
                size: 30),
            onPressed: () {
              _pageController.previousPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
              );
            },
          ),
        ),
        SmoothPageIndicator(
          controller: _pageController,
          count: _pages.length,
          effect: ExpandingDotsEffect(
            dotHeight: 8,
            dotWidth: 8,
            activeDotColor: Theme.of(context).primaryColor,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                  color: Theme.of(context).primaryColor, width: 1.5)),
          child: IconButton(
            icon: Icon(Icons.arrow_forward,
                color: Theme.of(context).primaryColor, size: 30),
            onPressed: () async {
              if (_currentPage < _pages.length - 1) {
                _pageController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              } else {
                await setOnboardingCompleted(true);
                Navigator.pushReplacementNamed(context, LoginScreen.routeName);
              }
            },
          ),
        ),
      ],
    );
  }
}
