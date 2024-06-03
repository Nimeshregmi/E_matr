import '../consts/consts.dart';

Widget customtextfield({String? title,String?hint,controlle,bool ispasss=false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text.color(redColor).size(16).fontFamily(semibold).make(),
        TextField(
          obscureText: ispasss,
          controller: controlle,
        decoration: InputDecoration(
          hintStyle: const TextStyle(
            fontFamily: semibold,
            color: textfieldGrey
          ),
          hintText: hint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder:const OutlineInputBorder(
            borderSide: BorderSide(color:redColor)
          )
        ),
      ),
      7.heightBox,
    ],
  );
}
