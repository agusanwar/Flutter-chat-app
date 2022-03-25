import 'package:chatapp/screens/onBoarding_screens.dart';
import 'package:chatapp/screens/sigin_screens.dart';
import 'package:chatapp/screens/splash_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async{
  // Set Devisce Portrait Orientation
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    ]);
 runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      routes: {
        '/': (context) => SplashScreens(),
        '/onBoarding': (context) => OnBoardingScreens(),
        '/sign-in': (context) => SignInScreens(),
      },
    );
  }
}
