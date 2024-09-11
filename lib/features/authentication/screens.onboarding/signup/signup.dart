import 'package:e_commarce/common/widgets/login_signup/form_divider.dart';
import 'package:e_commarce/common/widgets/login_signup/social_button.dart';
import 'package:e_commarce/features/authentication/screens.onboarding/signup/signup_form.dart';
import 'package:e_commarce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/sizes.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Title
              Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
              const SizedBox(height: TSizes.spaceBetweenSections),

              ///Form
              const TSignUpForm(),
              const SizedBox(height: TSizes.spaceBetweenSections),

              /// Divider
              TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!,),
              const SizedBox(height: TSizes.spaceBetweenSections),

              /// Social Button
              const TSocialButtons(),
              const SizedBox(height: TSizes.spaceBetweenSections),

            ],
          ),
        ),
      ),
    );
  }
}


