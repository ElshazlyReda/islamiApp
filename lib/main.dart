import 'package:flutter/material.dart';
import 'package:islami/features/layout/screens/layout_screen.dart';
import 'package:islami/features/on_boarding/screens/first_screen.dart';
import 'package:islami/features/quran/quran_details_view.dart';
import 'package:islami/features/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    initialRoute: SplashScreen.routeName,
    routes: {
      SplashScreen.routeName: (context){
        return  const SplashScreen();
      },

      LayOutScreen.routeName: (context){
        return  const LayOutScreen();
      },

      FirstScreen.routeName: (context){
        return  const FirstScreen();
    },
      QuranDetailsView.routeName: (context){
        return  QuranDetailsView();
    },
    }

    );
  }
}

