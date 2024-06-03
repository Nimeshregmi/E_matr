import 'package:flutter_emart_app/common_widget/bg.dart';
import 'package:flutter_emart_app/consts/consts.dart';

import 'category_details.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgwidget(
        child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: "Categories".text.makeCentered(),
      ),
      body: Container(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: 9,
          shrinkWrap: true,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 8, crossAxisSpacing: 8, mainAxisExtent: 200),
          itemBuilder: (context, index) {
            return Column(
              children: [
                Image.asset(
                  categoryList[index],
                  height: 120,
                  width: 100,
                  fit: BoxFit.fill,
                ),
                10.heightBox,
                categoryNameList[index].text.align(TextAlign.center).color(darkFontGrey).make(),
              ],
            ).box.white.rounded.clip(Clip.antiAlias).outerShadowMd.make().onTap(() {
              Get.to(()=>CategoryDetails(title: categoryNameList[index]));
            });
          },
        ),
      ),
    ));
  }
}
