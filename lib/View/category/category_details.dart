// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_emart_app/View/category/Product_fullDetail.dart';
import 'package:flutter_emart_app/common_widget/bg.dart';
import 'package:flutter_emart_app/consts/consts.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;
  const CategoryDetails({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return bgwidget(
        child: Scaffold(
      appBar: AppBar(
        title: title!.text.fontFamily(bold).white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            10.heightBox,
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(
                      6,
                      (index) => "Bipin"
                          .text
                          .color(darkFontGrey)
                          .fontFamily(semibold)
                          .makeCentered()
                          .box
                          .size(130, 60)
                          .roundedSM
                          .margin(const EdgeInsets.symmetric(horizontal: 6))
                          .padding(const EdgeInsets.all(13))
                          .white
                          .make()),
                )),
            10.heightBox,
            Expanded(
                child: Container(
              color: Colors.grey,
              child: GridView.builder(
                itemCount: 9,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8, mainAxisExtent: 250),
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
                  )
                      .box
                      .roundedSM
                      .white
                      .padding(const EdgeInsets.all(12))
                      .margin(const EdgeInsets.symmetric(horizontal: 4))
                      .outerShadowSm
                      .make()
                      .onTap(() {
                    Get.to(() => const ProductFullDetail( pronames: 'Legion 5', ));
                  });
                },
              ),
            ))
          ],
        ),
      ),
    ));
  }
}
