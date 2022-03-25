// ignore_for_file: file_names
import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:chatapp/shared/themes.dart';
import 'package:chatapp/widget/onBoarding_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreens extends StatefulWidget {
  const OnBoardingScreens({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreens> createState() => _OnBoardingScreensState();
}

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  // indicator screns
  int currentIndex = 0;
  //for setting carausel slidenya
  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Column(
        children: [
          Expanded(
            child: FadeInDown(
              child: CarouselSlider(
                  options: CarouselOptions(
                    height: double.infinity,
                    viewportFraction: 1,
                    initialPage: currentIndex,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, _) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  carouselController: controller,
                  // ignore: prefer_const_literals_to_create_immutables
                  items: [
                    OnBoardingItem(
                      imageUrl: 'assets/images/onboarding1.png',
                      title: 'Chat App',
                      subTitle: 'The Application Chat',
                    ),
                    OnBoardingItem(
                      imageUrl: 'assets/images/onboarding2.png',
                      title: 'Chat App',
                      subTitle: 'The Application Chat',
                    ),
                    OnBoardingItem(
                      imageUrl: 'assets/images/onboarding3.png',
                      title: 'Chat App',
                      subTitle: 'The Application Chat',
                    ),
                  ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: FadeInLeft(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 170, right: 10),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 0 ? kBlueColor : kRedColor),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 170, right: 10),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 1 ? kBlueColor : kRedColor),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 170, right: 10),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: currentIndex == 2 ? kBlueColor : kRedColor),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(bottom: 20),
            child: FadeInUp(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: kRedColor,
                    ),
                    child: TextButton(
                      onPressed: () {
                        controller.animateToPage(2);
                      },
                      child: Text(
                        'SKIP',
                        style: blackTextStyle.copyWith(
                            fontSize: 12, fontWeight: semiBold),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.transparent),
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            if (currentIndex == 2) {
                               Navigator.pushNamed(context, '/sign-in');
                            } else {
                            controller.nextPage();
                            }
                          },
                          child: Icon(
                            Icons.arrow_circle_right_rounded,
                            color: kBlueColor,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
