import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/themes/app_colors.dart';
import 'package:islami/features/on_boarding/widgets/onboarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class FirstScreen extends StatefulWidget {
  static String routeName = "FirstScreen";

  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  final int _totalPages = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColors,
      body: Stack(
        children: [
          // PageView with 5 pages for onboarding
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: [
              Onboarding(
                imagePath: AppAssets.welcomingPhoto,
                welcomeText: "Welcome to Islami App",
              ),
              Onboarding(
                imagePath: AppAssets.mousqeOnboarding,
                welcomeText: "Welcome to Islami App",
                additionalText:
                    "We Are Very Excited To Have You In Our Community",
              ),
              Onboarding(
                imagePath: AppAssets.quranOnboarding,
                welcomeText: "Welcome to Islami App",
                additionalText: "Read, and your Lord is the Most Generous",
              ),
              Onboarding(
                imagePath: AppAssets.doaaOnboarding,
                welcomeText: "Welcome to Islami App",
                additionalText: "Praise the name of your Lord, the Most High",
              ),
              Onboarding(
                imagePath: AppAssets.micOnboarding,
                welcomeText: "Welcome to Islami App",
                additionalText:
                    "You can listen to the Holy Quran Radio through the application for free and easily",
              ),
            ],
          ),
          Positioned(
            bottom: 50,
            right: 20,
            child: Visibility(
              visible: _currentPage < _totalPages - 1, // Hide on the last page
              child: GestureDetector(
                onTap: () {
                  _controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: AppColors.primaryColors,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          // Back Button (Text-based) at the bottom-left
          Positioned(
            bottom: 50,
            left: 20,
            child: Visibility(
              visible: _currentPage > 0, // Hide on the first page
              child: GestureDetector(
                onTap: () {
                  _controller.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                },
                child: Text(
                  'Back',
                  style: TextStyle(
                    color: AppColors.primaryColors,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            right: 20,
            child: Visibility(
              visible: _currentPage == _totalPages - 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, "Layout");
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: AppColors.primaryColors,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: _totalPages,
                effect: WormEffect(
                  dotWidth: 10,
                  dotHeight: 10,
                  radius: 5,
                  spacing: 8,
                  dotColor: Colors.grey,
                  activeDotColor: AppColors.primaryColors,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
