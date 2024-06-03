import '../consts/consts.dart';

Widget featureBotton({String?title,img}) {
  return Row(
    children: [
      Image.asset(img,width: 40,fit: BoxFit.fill,),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make(),
    ],
  ).box.rounded.white.width(150).margin(const EdgeInsets.symmetric(horizontal: 4)).padding(const EdgeInsets.all(4)).outerShadow.make();
}

