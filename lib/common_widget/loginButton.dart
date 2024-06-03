import '../consts/consts.dart';

Widget loginBtn({onPres, colors, textColor, title}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: colors, padding: const EdgeInsets.all(12)),
      onPressed:onPres,
      child: (title.toString()).text.color(textColor).fontFamily(bold).make());
}
