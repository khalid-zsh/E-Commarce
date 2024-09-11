import 'package:e_commarce/common/widgets/success_screen/success_screen.dart';
import 'package:e_commarce/features/authentication/screens.onboarding/login/login.dart';
import 'package:e_commarce/utils/constants/image_strings.dart';
import 'package:e_commarce/utils/constants/sizes.dart';
import 'package:e_commarce/utils/constants/text_strings.dart';
import 'package:e_commarce/utils/helpers/helper_function.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () =>  Get.offAll(() => const LoginScreen()), icon: const Icon (CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        // Padding to Give Default Equal Space to all screen
        child: Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(image: const AssetImage(TImages.deliveredEmailIllustration), width: THelperFunctions.screenWidth() * 0.6,),
              const SizedBox(height: TSizes.spaceBetweenSections,),

              /// Title and SubTitle
              Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBetweenItems,),
              Text('eyeshotkhalid@gmail.com', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBetweenItems,),
              Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
              const SizedBox(height: TSizes.spaceBetweenSections,),

              ///  Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(
                    image: TImages.staticSuccessIllustration,
                    title: TTexts.yourAccountCreatedTitle,
                    subTitle: TTexts.yourAccountCreatedSubTitle,
                    onPressed: () => Get.to(() => const LoginScreen()),
                  )), 
                  child: const Text(TTexts.tContinue),),
              ),
              const SizedBox(height: TSizes.spaceBetweenItems,),
              SizedBox(
                width: double.infinity,
                child: TextButton(onPressed: () {}, child: const Text(TTexts.resendEmail),),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
