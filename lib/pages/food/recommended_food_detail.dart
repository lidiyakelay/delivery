import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/app_icon.dart';
import 'package:food_delivery/widgets/big_text.dart';

import '../../widgets/expandable_text_widget.dart';
import '../../widgets/small_text.dart';

class  RecommendedFoodDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    body: CustomScrollView(
       slivers: [
         SliverAppBar(
           toolbarHeight: 80,
           title: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               AppIcon(icon: Icons.clear),
               AppIcon(icon: Icons.shopping_cart_outlined,)
             ],
           ),
           pinned: true,
           bottom: PreferredSize(
             preferredSize: Size.fromHeight(Dimensions.height20),
             child: Container(
               width: double.maxFinite,
               padding: EdgeInsets.only(top: 5, bottom: 10,),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(Dimensions.radius20),
                     topRight: Radius.circular(Dimensions.radius20)
                 )
               ),
               child: Center(child: BigText(text: 'Chinese Side', Size: Dimensions.font26,)),
             ),
           ) ,
         backgroundColor: AppColors.darkYellowColor,
         expandedHeight: Dimensions.backgroungImgSize,
           flexibleSpace: FlexibleSpaceBar(
         background: Image.asset('assets/images/food_8.JPG',
                      width: double.maxFinite,
                      fit: BoxFit.cover,),

         ),

         ),
         SliverToBoxAdapter(

           child: Container(
             margin: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
               child: ExpandableTextWidget(text: "Chinese cuisine is an important part of Chinese culture and includes cuisines originating from China. Because of the Chinese diaspora and historical power of the country, Chinese cuisine has influenced many other cuisines in Asia and beyond, with modifications made to cater to local palates. Chinese food staples such as rice, soy sauce, noodles, tea, chili oil, and tofu, and utensils such as chopsticks and the wok, can now be found worldwide.Chinese cuisine is an important part of Chinese culture and includes cuisines originating from China. Because of the Chinese diaspora and historical power of the country, Chinese cuisine has influenced many other cuisines in Asia and beyond, with modifications made to cater to local palates. Chinese food staples such as rice, soy sauce, noodles, tea, chili oil, and tofu, and utensils such as chopsticks and the wok, can now be found worldwide. Chinese cuisine is an important part of Chinese culture and includes cuisines originating from China. Because of the Chinese diaspora and historical power of the country, Chinese cuisine has influenced many other cuisines in Asia and beyond, with modifications made to cater to local palates. Chinese food staples such as rice, soy sauce, noodles, tea, chili oil, and tofu, and utensils such as chopsticks and the wok, can now be found worldwide.Chinese cuisine is an important part of Chinese culture and includes cuisines originating from China. Because of the Chinese diaspora and historical power of the country, Chinese cuisine has influenced many other cuisines in Asia and beyond, with modifications made to cater to local palates. Chinese food staples such as rice, soy sauce, noodles, tea, chili oil, and tofu, and utensils such as chopsticks and the wok, can now be found worldwide.Chinese cuisine is an important part of Chinese culture and includes cuisines originating from China. Because of the Chinese diaspora and historical power of the country, Chinese cuisine has influenced many other cuisines in Asia and beyond, with modifications made to cater to local palates. Chinese food staples such as rice, soy sauce, noodles, tea, chili oil, and tofu, and utensils such as chopsticks and the wok, can now be found worldwide.Chinese cuisine is an important part of Chinese culture and includes cuisines originating from China. Because of the Chinese diaspora and historical power of the country, Chinese cuisine has influenced many other cuisines in Asia and beyond, with modifications made to cater to local palates. Chinese food staples such as rice, soy sauce, noodles, tea, chili oil, and tofu, and utensils such as chopsticks and the wok, can now be found worldwide.",))

         ),
],
    ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding:EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10, left: Dimensions.width20*2.5, right:Dimensions.width20*2.5 ) ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.remove, iconcolor: Colors.white, iconSize: Dimensions.iconSize24, backgroundcolor: AppColors.mainColor,),
                BigText(text: ' \$12.88 '+ ' X '+ ' 0 ', color: AppColors.mainBlackColor, Size: Dimensions.font26,),
                AppIcon(icon: Icons.add, iconcolor: Colors.white, iconSize: Dimensions.iconSize24, backgroundcolor: AppColors.mainColor,),

              ],
            ),
          ),
          Container(
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

                  child:Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
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
        ],
      ),
    );
  }
}
