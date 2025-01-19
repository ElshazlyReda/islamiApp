import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/themes/app_colors.dart';
import 'package:islami/features/hadith/hadith_tab.dart';
import 'package:islami/features/layout/widgets/custom_nav_bar_widget.dart';
import 'package:islami/features/quran/quran_tab.dart';
import 'package:islami/features/radio/radio_tab.dart';
import 'package:islami/features/sebha/sebha_tab.dart';
import 'package:islami/features/times/times_tab.dart';

class LayOutScreen extends StatefulWidget {
  static String routeName = "Layout";

  const LayOutScreen({super.key});

  @override
  State<LayOutScreen> createState() => _LayOutScreenState();
}

class _LayOutScreenState extends State<LayOutScreen> {
  int selectedIndex = 0;
  List<Widget>tabs=[
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    TimesTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          selectedIndex = index;
          setState(() {});
        },
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.primaryColors,
        fixedColor: AppColors.white,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: CustomNavBarWidget(
                selectedIndex: selectedIndex,
                navBarIndex: 0,
                icon: AppAssets.quranIcn,
              ),
              label: "Quran"),
          BottomNavigationBarItem(
              icon: CustomNavBarWidget(
                selectedIndex: selectedIndex,
                navBarIndex: 1,
                icon: AppAssets.hadithIcn,
              ),
              label: "Hadith"),
          BottomNavigationBarItem(
              icon: CustomNavBarWidget(
                selectedIndex: selectedIndex,
                navBarIndex: 2,
                icon: AppAssets.sebhaIcn,
              ),
              label: "Sebha"),
          BottomNavigationBarItem(
              icon: CustomNavBarWidget(
                selectedIndex: selectedIndex,
                navBarIndex: 3,
                icon: AppAssets.radioIcn,
              ),
              label: "Radio"),
          BottomNavigationBarItem(
              icon: CustomNavBarWidget(
                selectedIndex: selectedIndex,
                navBarIndex: 4,
                icon: AppAssets.timeIcn,
              ),
              label: "Times"),

        ],
      ),
      body: tabs[selectedIndex],
    );
  }
}
