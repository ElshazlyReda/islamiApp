import 'package:flutter/material.dart';
import 'package:islami/core/themes/app_colors.dart';


class CustomNavBarWidget extends StatelessWidget {
  final int selectedIndex;
  final int navBarIndex;
  final String icon;

  const CustomNavBarWidget(
      {super.key, required this.selectedIndex, required this.navBarIndex,
        required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: selectedIndex == navBarIndex
            ? AppColors.secondaryColors.withOpacity(0.6)
            : Colors.transparent,
      ),
      child: ImageIcon(
        AssetImage(icon),
      ),
    );
  }
}
