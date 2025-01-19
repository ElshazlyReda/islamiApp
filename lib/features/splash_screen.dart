import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/features/on_boarding/screens/first_screen.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "splash";
  static Duration duration = const Duration(
      milliseconds: 1750
  );

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),
          () {
        Navigator.pushReplacementNamed(context, FirstScreen.routeName);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage(AppAssets.splashBG))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: FadeInDown(duration: SplashScreen.duration,
                  child: Image.asset(
                    AppAssets.glow,
                    height: size.height * 0.30,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: size.height * 0.20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: FadeInLeft(duration: SplashScreen.duration,
                    child: Image.asset(
                      AppAssets.shapeLeft,
                      height: size.width * 0.40,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: FadeInRight(duration: SplashScreen.duration,
                    child: Image.asset(
                      AppAssets.shapeRight,
                      height: size.width * 0.40,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: ZoomIn(duration: SplashScreen.duration,
                  child: Image.asset(
                    AppAssets.logo,
                    height: size.width * 0.30,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: FadeInUp(duration: SplashScreen.duration,
                  child: Image.asset(
                    AppAssets.routeLogo,
                    height: size.width * 0.25,
                  ),
                ),
              ),
              Container(margin: EdgeInsets.only(top: size.height * 0.15),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ZoomIn(duration: SplashScreen.duration,
                    child: Image.asset(
                      AppAssets.mosque,
                      height: size.width * 0.45,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
