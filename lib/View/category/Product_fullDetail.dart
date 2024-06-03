// ignore=
import 'package:flutter_emart_app/consts/consts.dart';

class ProductFullDetail extends StatelessWidget {
  final String? pronames;
  const ProductFullDetail({super.key, required this.pronames});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: pronames!.text.white.make(),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_outline)),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                VxSwiper.builder(
                  autoPlay: true,
                  height: 350,
                  aspectRatio: 16 / 9,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      imgFc5,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    );
                  },
                ),
                10.heightBox,
                pronames!.text.black.color(darkFontGrey).size(16).bold.make(),
                10.heightBox,
                VxRating(
                  onRatingUpdate: (value) {},
                  count: 5,
                  normalColor: textfieldGrey,
                  selectionColor: golden,
                  stepInt: true,
                  size: 25,
                ),
                10.heightBox,
                "\$300".text.color(redColor).bold.size(18).make(),
                10.heightBox,
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        'seller'.text.white.fontFamily(semibold).make(),
                        5.heightBox,
                        "In House Brand".text.color(fontGrey).fontFamily(bold).make()
                      ],
                    )),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.message),
                    ),
                  ],
                ).box.width(double.infinity).color(textfieldGrey).height(60).make(),
                10.heightBox,
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: "color: ".text.color(textfieldGrey).make(),
                        ),
                        Row(
                          children: List.generate(
                              3,
                              (index) => VxBox()
                                  .roundedFull
                                  .color(Vx.randomPrimaryColor)
                                  .margin(const EdgeInsets.symmetric(horizontal: 4))
                                  .size(40, 40)
                                  .make()),
                        ),
                      ],
                    ).box.padding(const EdgeInsets.all(8)).border(color: Colors.grey).rounded.make(),
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: "Quantity".text.color(textfieldGrey).make(),
                        ),
                        Row(
                          children: [
                            IconButton(onPressed: () {}, icon: const Icon(Icons.remove)),
                            "0".text.size(18).color(darkFontGrey).bold.make(),
                            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                            "0 available".text.color(textfieldGrey).make(),
                          ],
                        ),
                      ],
                    ).box.padding(const EdgeInsets.all(8)).border(color: Colors.grey).rounded.make(),
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: "Total:".text.color(textfieldGrey).make(),
                        ),
                        Row(
                          children: ["\$0.00".text.color(redColor).size(16).make()],
                        ),
                      ],
                    ).box.padding(const EdgeInsets.all(8)).border(color: Colors.grey).rounded.make(),
                  ],
                ).box.white.shadowLg.make(),
                15.heightBox,

                //Discription selection
                Align(alignment: Alignment.centerLeft, child: "Discription".text.bold.size(20).color(darkFontGrey).make())
                    .paddingSymmetric(horizontal: 8),
                10.heightBox,
                discription.text.color(darkFontGrey).fontFamily(semibold).make().box.make(),
                10.heightBox,
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(
                      5,
                      (index) => ListTile(
                            title: videos[index].text.fontFamily(semibold).make(),
                            trailing: const Icon(Icons.arrow_forward),
                            onTap: () {},
                          ).box.rounded.border().margin(const EdgeInsets.symmetric(vertical: 4)).make()),
                ),
                20.heightBox,
                mayalsoLike.text.bold.size(20).make(),
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
                10.heightBox,
              ],
            ),
          ).paddingAll(8)),
          Container(
            width: double.infinity,
            height: 60,
            color: redColor,
            child: "Add to Cart".text.bold.white.makeCentered(),
          ).onTap(() {}),
        ],
      ),
    );
  }
}
