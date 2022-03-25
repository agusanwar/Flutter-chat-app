// ignore_for_file: annotate_overrides
import 'dart:async';
import 'package:chatapp/shared/themes.dart';
import 'package:flutter/material.dart';

class SplashScreens extends StatefulWidget {
  const SplashScreens({Key? key}) : super(key: key);

  @override
  State<SplashScreens> createState() => _SplashScreensState();
}

class _SplashScreensState extends State<SplashScreens> {
  @override
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(context, '/onBoarding', (route) => false);
    });
    super.initState();
    
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 140,
              height: 140,
              margin: EdgeInsets.only(
                right: 30,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/logo.png',
                  ),
                ),
              ),
            ),
            Text(
              'Ayo Chat',
              style: blueTextStyle.copyWith(
                fontSize: 36,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}