import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kursuskoding/src/constants/colors.dart';
import 'package:kursuskoding/src/constants/image_strings.dart';
import 'package:kursuskoding/src/constants/sizes.dart';
import 'package:kursuskoding/src/constants/text_strings.dart';
import 'package:kursuskoding/src/features/authentication/controllers/splash_screen_controller.dart';
import '../welcome/welcome_screen.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  // SplashScreenController splashscreencontroller = SplashScreenController();
  final splashController = Get.put(SplashScreenController());
  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 0,
              left: splashController.animate.value ? 0 : 70,
              child: const Image(
                width: 150.0,
                height: 150.0,
                image: AssetImage(tSplashBottomIcon),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 110,
              left: splashController.animate.value ? 0 : 20,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(tAppName,
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.bold)),
                      Text(tAppTagLine,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              bottom: splashController.animate.value ? 150 : 180,
              left: 10,
              child: const Image(
                height: 300.0,
                width: 300,
                image: AssetImage(tSplashImage),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            right: tDefaultSize,
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
