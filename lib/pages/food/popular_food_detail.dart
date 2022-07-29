import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/widgets/app_column.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/expandable_text_widget.dart';
import '../../utils/colors.dart';
import '../../utils/dimensions.dart';
import '../../widgets/big_text.dart';
import '../../widgets/icon_and_text_widget.dart';
import '../../widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white ,
        body: Stack(
          children: [
            Positioned(
              left: 0,
                right: 0,
                child:Container(
                  height: Dimensions.popularFoodImgSize,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                          'assets/images/food_3.JPG'
                      )
                    )
                  ),
                ) ),
            Positioned(
              left: Dimensions.width20,
              right: Dimensions.width20,
              top: Dimensions.height45,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios_outlined),
                  AppIcon(icon: Icons.shopping_cart_outlined),

                ],
              ),
            ),
            Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                top: Dimensions.popularFoodImgSize-20,
                child:
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                       topLeft: Radius.circular( Dimensions.radius20),
                       topRight: Radius.circular(Dimensions.radius20)),
                    color: Colors.white,
                ),
                  padding: EdgeInsets.only(left:Dimensions.width20, right: Dimensions.width20, top: Dimensions.height20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                  AppColumn(text: "Chinese Side"),
                    SizedBox(height:Dimensions.height20),
                    BigText(text: 'Introduce'),
                      SizedBox(height:Dimensions.height20),
                      Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "Chinese cuisine is an important part of Chinese culture and includes cuisines originating from China. Because of the Chinese diaspora and historical power of the country, Chinese cuisine has influenced many other cuisines in Asia and beyond, with modifications made to cater to local palates. Chinese food staples such as rice, soy sauce, noodles, tea, chili oil, and tofu, and utensils such as chopsticks and the wok, can now be found worldwide.Chinese cuisine is an important part of Chinese culture and includes cuisines originating from China. Because of the Chinese diaspora and historical power of the country, Chinese cuisine has influenced many other cuisines in Asia and beyond, with modifications made to cater to local palates. Chinese food staples such as rice, soy sauce, noodles, tea, chili oil, and tofu, and utensils such as chopsticks and the wok, can now be found worldwide.",),))

                  ],)),
                ),

          ],

        ),
        bottomNavigationBar: Container(
          height: Dimensions.bottomNavigationHeight,
          padding: EdgeInsets.only(top: Dimensions.height30, bottom:Dimensions.height30, left: Dimensions.width20, right: Dimensions.width20 ),
          decoration: BoxDecoration(
            color: AppColors.buttonBackgroundColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(Dimensions.radius20*2),
              topLeft: Radius.circular(Dimensions.radius20*2)
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
               padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  ),

                child:Row(
                  children: [
                    Icon(Icons.remove,color: AppColors.signColor ),
                    SizedBox(width: Dimensions.height10/2,),
                    BigText(text: "0"),
                    SizedBox(width: Dimensions.height10/2,),
                    Icon(Icons.add, color: AppColors.signColor)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: Dimensions.height20, bottom: Dimensions.height20, left: Dimensions.width20, right: Dimensions.width20),
                child: BigText(text:"\$10 | Add to cart", color: Colors.white,),
                decoration: BoxDecoration(
                  color: AppColors.mainColor,
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                ),

              )
            ],
          ),
        ),
      );

  }
}
