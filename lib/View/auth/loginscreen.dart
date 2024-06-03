import 'package:flutter_emart_app/View/auth/sinupScreen.dart';
import 'package:flutter_emart_app/common_widget/appLogo.dart';
import 'package:flutter_emart_app/common_widget/bg.dart';
import 'package:flutter_emart_app/common_widget/custome_textfield.dart';
import 'package:flutter_emart_app/common_widget/loginButton.dart';
import 'package:flutter_emart_app/controller/auth_controller.dart';

import '../../consts/consts.dart';
import '../home/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var controller = Get.put(AuthController());

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
          'Login in $appname'.text.fontFamily(bold).white.size(18).make(),
          15.heightBox,
          Obx(() => Column(
                children: [
                  customtextfield(title: email, hint: emailHint, controlle: controller.emailcontroller),
                  customtextfield(title: password, hint: passwordHint, ispasss: true, controlle: controller.passcontroller),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {
                          Get.to(() => Home());
                        },
                        child: forgetpass.text.make()),
                  ),
                  const HeightBox(5),
                  controller.isLoading.value
                      ? const CircularProgressIndicator(
                          backgroundColor: redColor,
                        )
                      : loginBtn(
                          colors: redColor,
                          title: login,
                          textColor: whiteColor,
                          onPres:() {
                          Get.to(() => Home());
                          },
                          //  () async {
                          //   controller.isLoading(true);
                          //   await controller.loginMethod(context: context).then((value) {
                          //     if (value != null) {
                          //       VxToast.show(context, msg: "Login success");
                          //       Get.offAll(() => Home());
                          //     } else {
                          //       controller.isLoading(false);
                          //     }
                          //   });
                          // }
                          ).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  createNewaccount.text.make(),
                  10.heightBox,
                  loginBtn(
                      colors: lightGolden,
                      title: sinup,
                      textColor: redColor,
                      onPres: () {
                        Get.to(() => const SinInScreen());
                      }).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  loginwith.text.make(),
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
              ).box.white.rounded.padding(const EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make()),
        ]),
      ),
    ));
  }
}
