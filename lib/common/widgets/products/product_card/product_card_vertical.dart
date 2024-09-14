import 'package:e_commarce/common/styles/shadow.dart';
import 'package:e_commarce/common/widgets/products/product_card/rounded_container.dart';
import 'package:e_commarce/utils/constants/colors.dart';
import 'package:e_commarce/utils/constants/sizes.dart';
import 'package:e_commarce/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [TShadowStyle.horizontalProductShadow],
        borderRadius: BorderRadius.circular(TSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.white,
      ),
      child: Column(
        children: [
          ///Thumbnail,  Wishlist Button, Discount Tag
          TRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(TSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
          ),
          ///Details
        ],
      ),
    );
  }
}
