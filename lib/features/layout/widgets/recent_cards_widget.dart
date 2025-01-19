import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/themes/app_colors.dart';
import 'package:islami/models/recent_data.dart';

class RecentCardsWidget extends StatelessWidget {
  final RecentData recentData;
  const RecentCardsWidget({super.key, required this.recentData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: AppColors.primaryColors,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  recentData.suraNameEN,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  recentData.suraNameAR,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${recentData.verses} Verses",
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(AppAssets.recentImg)
        ],
      ),
    );
  }
}
