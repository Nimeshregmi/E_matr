import '../consts/consts.dart';

Widget homeButton({width,height,String? title,onPress,icons}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
  Image.asset(icons,width: 26,),
  10.heightBox,
  title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.rounded.size(width, height).white.shadowMd.make();
}


