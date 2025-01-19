import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/themes/app_colors.dart';


class Onboarding extends StatelessWidget {
  final String imagePath;
  final String welcomeText;
  final String? additionalText;

  const Onboarding({
    super.key,
    required this.imagePath,
    required this.welcomeText,
    this.additionalText,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.secondaryColors,
      body: Stack(
        children: [
          // App Logo
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              AppAssets.appLogo,
              width: size.width * 0.70,
              height: size.height * 0.25,
            ),
          ),
          // Onboarding Image
          Align(
            alignment: Alignment.center,
            child: Image.asset(imagePath),
          ),
          // Welcome Text
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 190),
              child: Text(
                welcomeText,
                style: TextStyle(
                  color: AppColors.primaryColors,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Additional Text (Optional)
          if (additionalText != null)
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(bottom: 80),
                child: Text(
                  additionalText!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.primaryColors,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
