import 'package:flutter/material.dart';
import 'package:kursuskoding/src/constants/colors.dart';
import 'package:kursuskoding/src/constants/image_strings.dart';
import 'package:kursuskoding/src/constants/sizes.dart';
import 'package:kursuskoding/src/constants/text_strings.dart';
import 'package:kursuskoding/src/features/authentication/models/model_on_boarding.dart';
import 'package:kursuskoding/src/features/authentication/screens/on_boarding/on_boarding_page_widget.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
  final controller = LiquidController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: tOnBoardingImage1,
          title: tOnBoardingTitle1,
          subTitle: tOnBoardingSubTitle1,
          counterText: tOnBoardingCounter1,
          height: size.height,
          bgColor: tOnBoadingPage1Color,
        ),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: tOnBoardingImage2,
          title: tOnBoardingTitle2,
          subTitle: tOnBoardingSubTitle2,
          counterText: tOnBoardingCounter2,
          height: size.height,
          bgColor: tOnBoadingPage2Color,
        ),
      ),
      OnBoardingPageWidget(
        model: OnBoardingModel(
          image: tOnBoardingImage3,
          title: tOnBoardingTitle3,
          subTitle: tOnBoardingSubTitle3,
          counterText: tOnBoardingCounter3,
          height: size.height,
          bgColor: tOnBoadingPage3Color,
        ),
      )
    ];


    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            liquidController: controller,
            onPageChangeCallback: null,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 75.0,
            child: OutlinedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  backgroundColor: Colors.white),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Color(0xff272727),
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Skip',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              effect: const WormEffect(
                activeDotColor: Colors.black,
                dotHeight: 5.0,
              ),
              activeIndex: controller.currentPage,
              count: 3,
            ),
          )
        ],
      ),
    );
  }

  void onPageChagedCallback(int activePageIndex) {
    int currentPage = activePageIndex;
  }
}
