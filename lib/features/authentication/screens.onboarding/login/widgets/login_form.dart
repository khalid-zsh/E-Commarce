import 'package:e_commarce/features/authentication/screens.onboarding/password_configaration/forget_pasword.dart';
import 'package:e_commarce/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../signup/signup.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(child: Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBetweenSections),
      child: Column(
        children: [
          /// Email
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct_right),
              labelText: TTexts.email,
            ),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields / 2),

          ///Password
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: TTexts.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBetweenInputFields / 2),

          /// Remember me and forget password
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              /// Remember me
              Row(
                children: [
                  Checkbox(value: true, onChanged: (value){}),
                  const Text(TTexts.rememberMe),
                ],
              ),

              /// Forget password
              TextButton(onPressed: () => Get.to(() => const ForgetPassword()), child: const Text(TTexts.forgotPassword)),
            ],
          ),
          const SizedBox(height: TSizes.spaceBetweenSections ),

          /// SignIn Button
          SizedBox(width: double.infinity ,child:  ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()), child: const Text(TTexts.signIn))),
          const SizedBox(height: TSizes.spaceBetweenItems ),

          ///  Create Account Button
          SizedBox(width: double.infinity ,child:  OutlinedButton(onPressed: () => Get.to(() => const SignupScreen()), child: const Text(TTexts.createAccount))),
        ],
      ),
    ),
    );
  }
}
