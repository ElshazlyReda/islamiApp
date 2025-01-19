import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/themes/app_colors.dart';
import 'package:islami/features/layout/widgets/recent_cards_widget.dart';
import 'package:islami/features/quran/quran_details_view.dart';
import 'package:islami/models/recent_data.dart';
import 'package:islami/models/sura_data_model.dart';

import 'widgets/sura_list_widget.dart';

class QuranTab extends StatefulWidget {
  QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<RecentData> recentDataList = [
    RecentData(suraNameEN: "Alnbiya", suraNameAR: "الأنبياء", verses: "112"),
    RecentData(suraNameEN: "Al-Fatiha", suraNameAR: "الفاتحه", verses: "12"),
    RecentData(suraNameEN: "Al-Baqarah", suraNameAR: "البقره", verses: "286"),
  ];

  List<SuraDetails> suraDetails = [
    SuraDetails(id: 1, nameAR: "الفَاتِحَة", nameEN: "al-Fatihah", verseCount: 7),
    SuraDetails(id: 2, nameAR: "البَقَرَة", nameEN: "al-Baqarah", verseCount: 286),
    SuraDetails(id: 3, nameAR: "آل عِمرَان", nameEN: "Aal-e-Imran", verseCount: 200),
    SuraDetails(id: 4, nameAR: "النِّسَاء", nameEN: "an-Nisa", verseCount: 176),
    SuraDetails(id: 5, nameAR: "المَائدة", nameEN: "al-Maidah", verseCount: 120),
    SuraDetails(id: 6, nameAR: "الأنعَام", nameEN: "al-An'am", verseCount: 165),
    SuraDetails(id: 7, nameAR: "الأعرَاف", nameEN: "al-A'raf", verseCount: 206),
    SuraDetails(id: 8, nameAR: "الأنفَال", nameEN: "al-Anfal", verseCount: 75),
    SuraDetails(id: 9, nameAR: "التوبَة", nameEN: "at-Tawbah", verseCount: 129),
    SuraDetails(id: 10, nameAR: "يُونس", nameEN: "Yunus", verseCount: 109),
    SuraDetails(id: 11, nameAR: "هُود", nameEN: "Hud", verseCount: 123),
    SuraDetails(id: 12, nameAR: "يُوسُف", nameEN: "Yusuf", verseCount: 111),
    SuraDetails(id: 13, nameAR: "الرَّعْد", nameEN: "ar-Ra'd", verseCount: 43),
    SuraDetails(id: 14, nameAR: "إبراهِيم", nameEN: "Ibrahim", verseCount: 52),
    SuraDetails(id: 15, nameAR: "الحِجْر", nameEN: "al-Hijr", verseCount: 99),
    SuraDetails(id: 16, nameAR: "النَّحْل", nameEN: "an-Nahl", verseCount: 128),
    SuraDetails(id: 17, nameAR: "الإسْرَاء", nameEN: "al-Isra", verseCount: 111),
    SuraDetails(id: 18, nameAR: "الكهْف", nameEN: "al-Kahf", verseCount: 110),
    SuraDetails(id: 19, nameAR: "مَريَم", nameEN: "Maryam", verseCount: 98),
    SuraDetails(id: 20, nameAR: "طه", nameEN: "Taha", verseCount: 135),
    SuraDetails(id: 21, nameAR: "الأنبيَاء", nameEN: "al-Anbiya", verseCount: 112),
    SuraDetails(id: 22, nameAR: "الحَج", nameEN: "al-Hajj", verseCount: 78),
    SuraDetails(id: 23, nameAR: "المُؤمنون", nameEN: "al-Mu'minun", verseCount: 118),
    SuraDetails(id: 24, nameAR: "النُّور", nameEN: "an-Nur", verseCount: 64),
    SuraDetails(id: 25, nameAR: "الفُرْقان", nameEN: "al-Furqan", verseCount: 77),
    SuraDetails(id: 26, nameAR: "الشُّعَرَاء", nameEN: "ash-Shu'ara", verseCount: 227),
    SuraDetails(id: 27, nameAR: "النَّمْل", nameEN: "an-Naml", verseCount: 93),
    SuraDetails(id: 28, nameAR: "القَصَص", nameEN: "al-Qasas", verseCount: 88),
    SuraDetails(id: 29, nameAR: "العَنكبوت", nameEN: "al-Ankabut", verseCount: 69),
    SuraDetails(id: 30, nameAR: "الرُّوم", nameEN: "ar-Rum", verseCount: 60),
    SuraDetails(id: 31, nameAR: "لقمَان", nameEN: "Luqman", verseCount: 34),
    SuraDetails(id: 32, nameAR: "السَّجدَة", nameEN: "as-Sajdah", verseCount: 30),
    SuraDetails(id: 33, nameAR: "الأحزَاب", nameEN: "al-Ahzab", verseCount: 73),
    SuraDetails(id: 34, nameAR: "سَبَأ", nameEN: "Saba", verseCount: 54),
    SuraDetails(id: 35, nameAR: "فَاطِر", nameEN: "Fatir", verseCount: 45),
    SuraDetails(id: 36, nameAR: "يس", nameEN: "Ya-Sin", verseCount: 83),
    SuraDetails(id: 37, nameAR: "الصَّافات", nameEN: "as-Saffat", verseCount: 182),
    SuraDetails(id: 38, nameAR: "ص", nameEN: "Sad", verseCount: 88),
    SuraDetails(id: 39, nameAR: "الزُّمَر", nameEN: "az-Zumar", verseCount: 75),
    SuraDetails(id: 40, nameAR: "غَافِر", nameEN: "Ghafir", verseCount: 85),
    SuraDetails(id: 41, nameAR: "فُصِّلَتْ", nameEN: "Fussilat", verseCount: 54),
    SuraDetails(id: 42, nameAR: "الشُّورَى", nameEN: "ash-Shura", verseCount: 53),
    SuraDetails(id: 43, nameAR: "الزُّخْرُف", nameEN: "az-Zukhruf", verseCount: 89),
    SuraDetails(id: 44, nameAR: "الدُّخان", nameEN: "ad-Dukhan", verseCount: 59),
    SuraDetails(id: 45, nameAR: "الجاثِية", nameEN: "al-Jathiyah", verseCount: 37),
    SuraDetails(id: 46, nameAR: "الأحقاف", nameEN: "al-Ahqaf", verseCount: 35),
    SuraDetails(id: 47, nameAR: "مُحَمّد", nameEN: "Muhammad", verseCount: 38),
    SuraDetails(id: 48, nameAR: "الفَتْح", nameEN: "al-Fath", verseCount: 29),
    SuraDetails(id: 49, nameAR: "الحُجُرات", nameEN: "al-Hujurat", verseCount: 18),
    SuraDetails(id: 50, nameAR: "ق", nameEN: "Qaf", verseCount: 45),
    SuraDetails(id: 51, nameAR: "الذَّاريَات", nameEN: "adh-Dhariyat", verseCount: 60),
    SuraDetails(id: 52, nameAR: "الطُّور", nameEN: "at-Tur", verseCount: 49),
    SuraDetails(id: 53, nameAR: "النَّجْم", nameEN: "an-Najm", verseCount: 62),
    SuraDetails(id: 54, nameAR: "القَمَر", nameEN: "al-Qamar", verseCount: 55),
    SuraDetails(id: 55, nameAR: "الرَّحْمَٰن", nameEN: "ar-Rahman", verseCount: 78),
    SuraDetails(id: 56, nameAR: "الوَاقِعَة", nameEN: "al-Waqi'ah", verseCount: 96),
    SuraDetails(id: 57, nameAR: "الحَدِيد", nameEN: "al-Hadid", verseCount: 29),
    SuraDetails(id: 58, nameAR: "المُجَادِلَة", nameEN: "al-Mujadilah", verseCount: 22),
    SuraDetails(id: 59, nameAR: "الحَشْر", nameEN: "al-Hashr", verseCount: 24),
    SuraDetails(id: 60, nameAR: "المُمْتَحَنَة", nameEN: "al-Mumtahanah", verseCount: 13),
    SuraDetails(id: 61, nameAR: "الصَّفّ", nameEN: "as-Saff", verseCount: 14),
    SuraDetails(id: 62, nameAR: "الجُمُعَة", nameEN: "al-Jumu'ah", verseCount: 11),
    SuraDetails(id: 63, nameAR: "المُنَافِقُون", nameEN: "al-Munafiqun", verseCount: 11),
    SuraDetails(id: 64, nameAR: "التَّغَابُن", nameEN: "at-Taghabun", verseCount: 18),
    SuraDetails(id: 65, nameAR: "الطَّلَاق", nameEN: "at-Talaq", verseCount: 12),
    SuraDetails(id: 66, nameAR: "التَّحْرِيم", nameEN: "at-Tahrim", verseCount: 12),
    SuraDetails(id: 67, nameAR: "المُلْك", nameEN: "al-Mulk", verseCount: 30),
    SuraDetails(id: 68, nameAR: "القَلَم", nameEN: "al-Qalam", verseCount: 52),
    SuraDetails(id: 69, nameAR: "الحَاقَّة", nameEN: "al-Haqqah", verseCount: 52),
    SuraDetails(id: 70, nameAR: "المَعَارِج", nameEN: "al-Ma'arij", verseCount: 44),
    SuraDetails(id: 71, nameAR: "نُوح", nameEN: "Nuh", verseCount: 28),
    SuraDetails(id: 72, nameAR: "الجِنّ", nameEN: "al-Jinn", verseCount: 28),
    SuraDetails(id: 73, nameAR: "المُزَّمِّل", nameEN: "al-Muzzammil", verseCount: 20),
    SuraDetails(id: 74, nameAR: "المُدَّثِّر", nameEN: "al-Muddathir", verseCount: 56),
    SuraDetails(id: 75, nameAR: "القِيَامَة", nameEN: "al-Qiyamah", verseCount: 40),
    SuraDetails(id: 76, nameAR: "الإنسَان", nameEN: "al-Insan", verseCount: 31),
    SuraDetails(id: 77, nameAR: "المُرْسَلَات", nameEN: "al-Mursalat", verseCount: 50),
    SuraDetails(id: 78, nameAR: "النَّبَأ", nameEN: "an-Naba", verseCount: 40),
    SuraDetails(id: 79, nameAR: "النَّازِعَات", nameEN: "an-Nazi'at", verseCount: 46),
    SuraDetails(id: 80, nameAR: "عَبَسَ", nameEN: "Abasa", verseCount: 42),
    SuraDetails(id: 81, nameAR: "التَّكْوِير", nameEN: "at-Takwir", verseCount: 29),
    SuraDetails(id: 82, nameAR: "الانفِطَار", nameEN: "al-Infitar", verseCount: 19),
    SuraDetails(id: 83, nameAR: "المُطَفِّفِين", nameEN: "al-Mutaffifin", verseCount: 36),
    SuraDetails(id: 84, nameAR: "الانشِقَاق", nameEN: "al-Inshiqaq", verseCount: 25),
    SuraDetails(id: 85, nameAR: "البُرُوج", nameEN: "al-Buruj", verseCount: 22),
    SuraDetails(id: 86, nameAR: "الطَّارِق", nameEN: "at-Tariq", verseCount: 17),
    SuraDetails(id: 87, nameAR: "الأعلى", nameEN: "al-A'la", verseCount: 19),
    SuraDetails(id: 88, nameAR: "الغَاشِيَة", nameEN: "al-Ghashiyah", verseCount: 26),
    SuraDetails(id: 89, nameAR: "الفَجْر", nameEN: "al-Fajr", verseCount: 30),
    SuraDetails(id: 90, nameAR: "البَلَد", nameEN: "al-Balad", verseCount: 20),
    SuraDetails(id: 91, nameAR: "الشَّمْس", nameEN: "ash-Shams", verseCount: 15),
    SuraDetails(id: 92, nameAR: "اللَّيْل", nameEN: "al-Lail", verseCount: 21),
    SuraDetails(id: 93, nameAR: "الضُّحَىٰ", nameEN: "ad-Duha", verseCount: 11),
    SuraDetails(id: 94, nameAR: "الشَّرْح", nameEN: "ash-Sharh", verseCount: 8),
    SuraDetails(id: 95, nameAR: "التِّين", nameEN: "at-Tin", verseCount: 8),
    SuraDetails(id: 96, nameAR: "العَلَق", nameEN: "al-Alaq", verseCount: 19),
    SuraDetails(id: 97, nameAR: "القَدْر", nameEN: "al-Qadr", verseCount: 5),
    SuraDetails(id: 98, nameAR: "البَيِّنَة", nameEN: "al-Bayyinah", verseCount: 8),
    SuraDetails(id: 99, nameAR: "الزَّلْزَلَة", nameEN: "az-Zalzalah", verseCount: 8),
    SuraDetails(id: 100, nameAR: "العَادِيَات", nameEN: "al-Adiyat", verseCount: 11),
    SuraDetails(id: 101, nameAR: "القَارِعَة", nameEN: "al-Qari'ah", verseCount: 11),
    SuraDetails(id: 102, nameAR: "التَّكَاثُر", nameEN: "at-Takathur", verseCount: 8),
    SuraDetails(id: 103, nameAR: "العَصْر", nameEN: "al-Asr", verseCount: 3),
    SuraDetails(id: 104, nameAR: "الهُمَزَة", nameEN: "al-Humazah", verseCount: 9),
    SuraDetails(id: 105, nameAR: "الفِيل", nameEN: "al-Fil", verseCount: 5),
    SuraDetails(id: 106, nameAR: "قُرَيْش", nameEN: "Quraysh", verseCount: 4),
    SuraDetails(id: 107, nameAR: "المَاعُون", nameEN: "al-Ma'un", verseCount: 7),
    SuraDetails(id: 108, nameAR: "الكَوْثَر", nameEN: "al-Kawthar", verseCount: 3),
    SuraDetails(id: 109, nameAR: "الكَافِرُون", nameEN: "al-Kafirun", verseCount: 6),
    SuraDetails(id: 110, nameAR: "النَّصْر", nameEN: "an-Nasr", verseCount: 3),
    SuraDetails(id: 111, nameAR: "المَسَد", nameEN: "al-Masad", verseCount: 5),
    SuraDetails(id: 112, nameAR: "الإخْلَاص", nameEN: "al-Ikhlas", verseCount: 4),
    SuraDetails(id: 113, nameAR: "الفَلَق", nameEN: "al-Falaq", verseCount: 5),
    SuraDetails(id: 114, nameAR: "النَّاس", nameEN: "an-Nas", verseCount: 6),
  ];

  List<SuraDetails> searchSuraModels=[];

String searchQuery='';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppAssets.quranBG),
          ),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column( crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(AppAssets.appLogo),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: TextFormField(
                    onChanged: (String value){
                      searchQuery=value;
                      search();
                      setState(() {});
                    },
                    cursorColor: AppColors.primaryColors,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppColors.titleTextColor,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.secondaryColors.withOpacity(0.5),
                      hintText: "Sura Name",
                      hintStyle: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.titleTextColor,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: AppColors.primaryColors),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: AppColors.primaryColors),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ImageIcon(
                          AssetImage(AppAssets.quranIcn),
                          color: AppColors.primaryColors,
                        ),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: searchQuery.isEmpty,
                    replacement: ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context,
                              QuranDetailsView.routeName,
                              arguments: suraDetails[index]
                          );
                        },
                        child: SuraListWidget(
                          suraDetails: searchSuraModels[index],
                        ),
                      ),
                      separatorBuilder: (context, index) => const Divider(
                        endIndent: 60,
                        indent: 60,
                      ),
                      itemCount: searchSuraModels.length,
                    ),
                    child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 25.0),
                          child: Text(
                            "Most Recently",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.titleTextColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => RecentCardsWidget(
                          recentData: recentDataList[index],
                        ),
                        itemCount: recentDataList.length,
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 20.0),
                          child: Text(
                            "Sura List",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.titleTextColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () =>  Navigator.pushNamed(
                            context,
                            QuranDetailsView.routeName,
                            arguments: suraDetails[index]
                        ),
                        child: SuraListWidget(
                          suraDetails: suraDetails[index],
                        ),
                      ),
                      separatorBuilder: (context, index) => const Divider(
                        endIndent: 60,
                        indent: 60,
                        thickness: 2,
                      ),
                      itemCount: suraDetails.length,
                    )
                  ],
                ))
              ],
            ),
          ),
        ));
  }
  void search(){
    searchSuraModels=[];
    for(SuraDetails sura in suraDetails){
      if(sura.nameAR.toLowerCase().contains(searchQuery.toLowerCase())  || sura.nameEN.toLowerCase().contains(searchQuery.toLowerCase())  ){
        searchSuraModels.add(sura);
      }
    }
  }
}
