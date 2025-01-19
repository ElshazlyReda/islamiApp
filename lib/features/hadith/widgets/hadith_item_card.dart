import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/themes/app_colors.dart';

class HadithItemCard extends StatelessWidget {
  const HadithItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.primaryColors,
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.hadithCardBackground),
              ),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      AppAssets.leftCornerHadithCard,
                      width: size.width * 0.20,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "الجديث الاول",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      AppAssets.rightCornerHadithCard,
                      width: size.width * 0.20,
                    ),
                  ),
                ],
              ),
              const Expanded(
                child: Text(textAlign: TextAlign.center,
                  '''عن أمـيـر المؤمنـين أبي حـفص عمر بن الخطاب رضي الله عنه ، قال : سمعت رسول الله صلى الله عـليه وسلم يـقـول : ( إنـما الأعـمـال بالنيات وإنـمـا لكـل امـرئ ما نـوى . فمن كـانت هجرته إلى الله ورسولـه فهجرتـه إلى الله ورسـوله ومن كانت هجرته لـدنيا يصـيبها أو امرأة ينكحها فهجرته إلى ما هاجر إليه ).
رواه إمام المحد ثين أبـو عـبـد الله محمد بن إسماعـيل بن ابراهـيـم بن المغـيره بن بـرد زبه البخاري الجعـفي،[رقم:1] وابـو الحسـيـن مسلم بن الحجاج بن مـسلم القـشـيري الـنيسـابـوري [رقم :1907] رضي الله عنهما في صحيحيهما اللذين هما أصح الكتب المصنفه. 
''',
                  style: TextStyle(

                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ), ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}