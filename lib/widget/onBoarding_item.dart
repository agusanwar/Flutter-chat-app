// ignore_for_file: file_names

import 'package:animate_do/animate_do.dart';
import 'package:chatapp/shared/themes.dart';
import 'package:flutter/material.dart';

class OnBoardingItem extends StatelessWidget {
  
  final String imageUrl;
  final String title;
  final String subTitle;

  const OnBoardingItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInRight(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            margin: EdgeInsets.only(
              bottom: 50,
              top: 50
            ),
            width: double.infinity,
            color: kWhiteColor,
            child: Image.asset(
              imageUrl,
              width: double.infinity,
            ),
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            subTitle,
            style: grayTextStyle.copyWith(
              fontSize: 18,
              fontWeight: regular
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
