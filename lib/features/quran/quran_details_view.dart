import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/themes/app_colors.dart';
import 'package:islami/models/sura_data_model.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "QurandetailsView";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    var size = MediaQuery.of(context).size;

    if (versesList.isEmpty) loadData(args.id.toString());
    return Scaffold(
      backgroundColor: AppColors.secondaryColors,
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.primaryColors),
        backgroundColor: AppColors.secondaryColors,
        centerTitle: true,
        title: Text(
          args.nameEN,
          style: TextStyle(
            fontSize: 20,
            color: AppColors.primaryColors,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          // Row with the sura name and images
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Image(
                  image: AssetImage(AppAssets.leftSuraDetails),
                  height: size.width * 0.20,
                ),
              ),
              const Spacer(),
              Text(
                args.nameAR,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryColors,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Image(
                  image: AssetImage(AppAssets.rightSuraDetails),
                  height: size.width * 0.20,
                ),
              ),
            ],
          ),
          // Verses content
          Expanded(
            child: versesList.isEmpty
                ? Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColors,
              ),
            )
                : ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              itemCount: versesList.length,
              itemBuilder: (context, index) => Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 18.0,
                  ),
                  child: Text(
                   " [${index + 1}] ${versesList[index]} ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColors,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Bottom Image
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Image(
                image: AssetImage(AppAssets.bottomSuraDetails),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void loadData(String suraID) async {
    String content = await rootBundle.loadString("assets/files/$suraID.txt");
    setState(() {
      versesList = content.split("\n");
    });
  }
}
