import 'package:e_commarce/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:e_commarce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commarce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commarce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commarce/utils/constants/colors.dart';
import 'package:e_commarce/utils/constants/image_strings.dart';
import 'package:e_commarce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/texts/section_heading.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBetweenSections),

                  ///SearchBar
                  TSearchContainer(text: 'Search in Store',),
                  SizedBox(height: TSizes.spaceBetweenSections),

                  /// Heading and Categories
                  Padding(
                      padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        /// Heading
                        TSectionHeading(title: 'Popular Categories', showActonButton: false, textColor: TColors.white,),
                        SizedBox(height: TSizes.spaceBetweenItems),

                        /// Categories
                        THomeCategories()
                      ],
                    ),
                  ),
                ],
              ),
            ),
            /// Body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: TPromoSlider(banners: [TImages.promoBanner1,TImages.promoBanner2,TImages.promoBanner3],),
            ),

            /// Popular Product
            TProductCardVertical(),
          ],
        ),
      ),
    );
  }
}






















