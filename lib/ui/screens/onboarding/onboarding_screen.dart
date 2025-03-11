import 'package:evently/ui/screens/auth/login/login_screen.dart';
import 'package:evently/ui/utilities/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../l10n/app_translations.dart';
import '../../../providers/shared_preferences.dart';
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

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      OnboardingPage(
        title: getTranslations(context).onboarding_title_1,
        description: getTranslations(context).onboarding_description_1,
        imagePath: AppImages.onboardingImg1,
      ),
      OnboardingPage(
        title: getTranslations(context).onboarding_title_2,
        description: getTranslations(context).onboarding_description_2,
        imagePath: AppImages.onboardingImg2,
      ),
      OnboardingPage(
        title: getTranslations(context).onboarding_title_3,
        description: getTranslations(context).onboarding_description_3,
        imagePath: AppImages.onboardingImg3,
      ),
    ];

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
              children: pages,
            )),
            _buildNavigationControls(pages.length),
          ],
        ),
      ),
    ));
  }

  Widget _buildNavigationControls(int pageCount) {
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
          count: pageCount,
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
              if (_currentPage < pageCount - 1) {
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
