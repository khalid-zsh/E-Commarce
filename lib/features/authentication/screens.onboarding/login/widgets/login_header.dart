import 'package:e_commarce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 160,
          image: AssetImage( dark ? TImages.lightAppLogo : TImages.loginScreenHeader),
        ),
        Text(TTexts.logInTitle, style: Theme.of(context).textTheme.headlineMedium,),
        const SizedBox(height: TSizes.sm,),
        Text(TTexts.logInSubTitle, style: Theme.of(context).textTheme.bodyMedium,),
      ],
    );
  }
}
