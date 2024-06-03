import 'package:flutter_emart_app/common_widget/appLogo.dart';
import 'package:flutter_emart_app/common_widget/bg.dart';
import 'package:flutter_emart_app/common_widget/custome_textfield.dart';
import 'package:flutter_emart_app/common_widget/loginButton.dart';
import 'package:flutter_emart_app/controller/auth_controller.dart';

import '../../consts/consts.dart';
import '../home/home.dart';

class SinInScreen extends StatefulWidget {
  const SinInScreen({super.key});

  @override
  State<SinInScreen> createState() => _SinInScreenState();
}

class _SinInScreenState extends State<SinInScreen> {
  bool ischeck = false;
  bool matchpass = false;
  var controller = Get.put(AuthController());
  //TextEditingController
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var passreController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return bgwidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(children: [
          (context.screenHeight * .1).heightBox,
          appLogowidget(),
          10.heightBox,
          'Join the $appname'.text.fontFamily(bold).white.size(18).make(),
          15.heightBox,
          Obx(() => Column(
              children: [
                customtextfield(title: name, hint: nameHint, controlle: nameController),
                customtextfield(title: email, hint: emailHint, controlle: emailController),
                customtextfield(title: password, hint: passwordHint, controlle: passController, ispasss: true),
                customtextfield(title: retypePass, hint: passwordHint, controlle: passreController, ispasss: true),
                // 5.heightBox,
                Row(
                  children: [
                    Checkbox(
                        value: ischeck,
                        activeColor: redColor,
                        onChanged: (newValue) {
                          setState(() {
                            ischeck = newValue!;
                          });
                        }),
                    Expanded(
                      child: RichText(
                        text: const TextSpan(children: [
                          TextSpan(text: agreeto, style: TextStyle(fontFamily: bold, color: fontGrey)),
                          TextSpan(text: termandcond, style: TextStyle(fontFamily: bold, color: redColor)),
                          TextSpan(text: "&", style: TextStyle(fontFamily: bold, color: fontGrey)),
                          TextSpan(text: privatePolicy, style: TextStyle(fontFamily: bold, color: redColor)),
                        ]),
                      ),
                    )
                  ],
                ),
                controller.isLoading.value
                    ? const CircularProgressIndicator(
                        backgroundColor: redColor,
                      )
                    : loginBtn(
                        colors: ischeck ? redColor : fontGrey,
                        title: sinup,
                        textColor: whiteColor,
                        onPres: () async {
                          // if (passController.text == passreController.text) {
                            controller.isLoading(true);
                            if (ischeck) {
                              try {
                                await controller
                                    .signUpMethod(context: context, email: emailController.text, password: passController.text)
                                    .then((value) {
                                  return controller.storeUserdata(
                                      email: emailController.text, name: nameController.text, password: passController.text);
                                }).then((value) {
                                  VxToast.show(context, msg: 'Login successful');
                                  Get.offAll(() => Home());
                                });
                              } catch (e) {
                                auth.signOut();
                                controller.isLoading(false);
                              }
                            }
                          // } else {
                          //   VxToast.show(context, msg: "Retype same Password as Password");
                          // }
                        }).box.width(context.screenWidth - 50).make(),
                10.heightBox,
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(text: alreadyhaveAcc, style: TextStyle(fontWeight: FontWeight.normal, color: fontGrey)),
                  TextSpan(text: login, style: TextStyle(fontWeight: FontWeight.bold, color: redColor)),
                ])).onTap(() {
                  Get.back();
                }),
                10.heightBox,
                sinupwith.text.color(Colors.blue).make(),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundColor: lightGrey,
                                child: Image.asset(socialIconList[index], width: 30),
                              ),
                            )))
              ],
            ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),
          ),
        ]),
      ),
    ));
  }
}
