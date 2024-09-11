import 'package:e_commarce/features/authentication/screens.onboarding/widgets/on_boarding_circular_button.dart';
import 'package:e_commarce/features/authentication/screens.onboarding/widgets/on_boarding_dot_navigation.dart';
import 'package:e_commarce/features/authentication/screens.onboarding/widgets/onboarding_page.dart';
import 'package:e_commarce/features/authentication/screens.onboarding/widgets/onboarding_skip.dart';
import 'package:e_commarce/utils/constants/image_strings.dart';
import 'package:e_commarce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers.onboarding/onboarding_controller.dart';

class onBoardingScreen extends StatelessWidget{
  const onBoardingScreen({super.key});

  @override
  Widget build(BuildContext context){

    final controller = Get.put(onBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          ///Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.OnBoardingTitle1,
                subtitle: TTexts.OnBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.OnBoardingTitle2,
                subtitle: TTexts.OnBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.OnBoardingTitle3,
                subtitle: TTexts.OnBoardingSubTitle3,
              ),
            ],
          ),

          ///Skip Button
          const OnBoardingSkip(),

          ///Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          ///Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}












