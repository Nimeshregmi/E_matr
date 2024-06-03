// import 'package:flutter/material.dart';
import 'package:flutter_emart_app/common_widget/featureButton.dart';
import 'package:flutter_emart_app/common_widget/home_button.dart';
import 'package:flutter_emart_app/consts/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightGrey,
      padding: const EdgeInsets.all(12),
      width: context.screenWidth,
      height: context.screenHeight,
      child: SafeArea(
        child: Column(
          children: [
            //search top
            Container(
              alignment: Alignment.center,
              height: 60,
              color: lightGrey,
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    filled: true,
                    fillColor: whiteColor,
                    hintText: search,
                    suffix: Icon(Icons.search),
                    hintStyle: TextStyle(color: textfieldGrey)),
              ),
            ),
            10.heightBox,

            //First swiper
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: swiperList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          swiperList[index],
                          fit: BoxFit.fill,
                        ).box.clip(Clip.antiAlias).rounded.margin(const EdgeInsets.symmetric(horizontal: 10)).make();
                      },
                    ),
                    10.heightBox,
                    //two botton at the middle
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                            2,
                            (index) => homeButton(
                                height: context.screenHeight * .12,
                                width: context.screenWidth / 2.8,
                                icons: index == 0 ? icTodaysDeal : icFlashDeal,
                                title: index == 0 ? todaydeal : flashsell,
                                onPress: () {}))),
                    10.heightBox,
                    //second swiper
                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: secondSwiperList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          secondSwiperList[index],
                          fit: BoxFit.fill,
                        ).box.clip(Clip.antiAlias).rounded.margin(const EdgeInsets.symmetric(horizontal: 10)).make();
                      },
                    ),
                    10.heightBox,
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                            3,
                            (index) => homeButton(
                                height: context.screenHeight * .1,
                                width: context.screenWidth / 3.5,
                                icons: index == 0
                                    ? icTopCategories
                                    : index == 1
                                        ? icBrands
                                        : icTopSeller,
                                title: index == 0
                                    ? topctogry
                                    : index == 1
                                        ? brands
                                        : topseller,
                                onPress: () {}))),

                    20.heightBox,
                    Align(alignment: Alignment.centerLeft, child: featurectgory.text.size(22).color(darkFontGrey).bold.make()),
                    20.heightBox,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            3,
                            (index) => Column(
                                  children: [
                                    featureBotton(img: featuredImg1[index], title: featureTitle1[index]),
                                    10.heightBox,
                                    featureBotton(img: featuredImg2[index], title: featureTitle2[index])
                                  ],
                                )).toList(),
                      ),
                    ),
                    20.heightBox,
                    //Featured Product
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                        color: redColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          featuredpro.text.bold.size(22).make(),
                          10.heightBox,
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(
                                  6,
                                  (index) => Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            imgP1,
                                            width: 150,
                                            fit: BoxFit.cover,
                                          ),
                                          10.heightBox,
                                          "Lenovo Legion 5".text.fontFamily(semibold).color(darkFontGrey).make(),
                                          10.heightBox,
                                          "\$600".text.fontFamily(bold).color(redColor).make()
                                        ],
                                      ).box.rounded.white.padding(const EdgeInsets.all(8)).margin(const EdgeInsets.symmetric(horizontal: 6)).make()),
                            ),
                          ),
                        ],
                      ),
                    ),
                    10.heightBox,
                    //third swiper
                    VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 150,
                      enlargeCenterPage: true,
                      itemCount: swiperList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          swiperList[index],
                          fit: BoxFit.fill,
                        ).box.clip(Clip.antiAlias).rounded.margin(const EdgeInsets.symmetric(horizontal: 10)).make();
                      },
                    ),
                    20.heightBox,
                    //Product Shown with gridview
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 6,
                      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 8,crossAxisSpacing: 6,mainAxisExtent: context.screenHeight/3),
                      itemBuilder: (context, index) {
                        return Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Image.asset(
                                            imgP7,
                                            width: 160,
                                            height: 140,
                                            fit: BoxFit.cover,
                                          ),
                                          const Spacer(),
                                          "Lenovo Legion 5".text.fontFamily(semibold).color(darkFontGrey).make(),
                                          10.heightBox,
                                          "\$600".text.fontFamily(bold).color(redColor).make(),    
                                        ],
                                      ).box.roundedSM.white.padding(const EdgeInsets.all(12)).margin(const EdgeInsets.symmetric(horizontal: 4)).make();
                      },
                    ),
                    
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
