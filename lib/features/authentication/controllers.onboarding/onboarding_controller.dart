import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../screens.onboarding/login/login.dart';

class onBoardingController extends GetxController{
  static onBoardingController get  instance => Get.find();

  ///Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  /// Update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;


  ///Jump to specific dot selected page
  void dotNavigationClick(index){
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  ///Update current index and jump to next page
  void nextPage(){
    if(currentPageIndex.value == 2){
      Get.to(const LoginScreen());
    }else{
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  ///Update current index and jump to last page
  void skipPage(){
    if(currentPageIndex.value == 0){
      Get.to(const LoginScreen());
    }else if(currentPageIndex.value == 1){
      Get.to(const LoginScreen());
    }else if(currentPageIndex.value == 2){
      Get.to(const LoginScreen());
    }
  }
}
