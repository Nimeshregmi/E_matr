import 'package:flutter_emart_app/View/auth/loginscreen.dart';
import 'package:flutter_emart_app/common_widget/bg.dart';
import 'package:flutter_emart_app/controller/auth_controller.dart';
import '../../consts/consts.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgwidget(
        child: Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              5.heightBox,
              Align(
                alignment: Alignment.bottomRight,
                child: const Icon(
                  Icons.edit,
                  size: 25,
                  color: Colors.white,
                ).box.margin(const EdgeInsets.symmetric(horizontal: 20)).make().onTap(() {}),
              ),
              5.heightBox,
              Row(
                children: [
                  5.widthBox,
                  Image.asset(
                    imgProfile2,
                    width: 85,
                    fit: BoxFit.cover,
                  ).box.roundedFull.clip(Clip.antiAlias).make(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Dummy Text ".text.bold.size(17).white.make(),
                        "dummyEmail@gmail.com ".text.sm.white.make(),
                      ],
                    ),
                  ),
                  10.widthBox,
                  OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                        color: whiteColor,
                      )),
                      onPressed: () async {
                        await Get.put(AuthController()).sinoutMethod(context);
                        Get.offAll(() => const LoginScreen());
                      },
                      child: "Log Out".text.fontFamily(semibold).white.make()),
                  10.widthBox,
                ],
              ),
              20.heightBox,
              Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          3,
                          (index) => Column(
                                children: ["200".text.fontFamily(semibold).size(18).make(), 10.heightBox, accoutFirstList[index].text.bold.make()],
                              ).box.roundedSM.padding(const EdgeInsets.all(8)).shadowSm.white.make())),
                  20.heightBox,
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //   children: List.generate(
                  //       3,
                  //       (index) => VStack(crossAlignment: CrossAxisAlignment.center, [
                  //             Icon(iconsUsed[index]),
                  //             10.heightBox,
                  //             editlanguage[index].text.make(),
                  //           ])),
                  // ),
                  20.heightBox,
                  Column(
                    children: List.generate(
                        walletAndOther.length,
                        (index) => Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [10.widthBox, Icon(walletAndOther[index]), 20.widthBox, walletandOtherList[index].text.make()])
                            .box
                            .padding(const EdgeInsets.symmetric(vertical: 10))
                            .border()
                            .margin(const EdgeInsets.symmetric(vertical: 10))
                            .rounded
                            .make()),
                  ).box.shadowMd.width(Get.width - 50).padding(const EdgeInsets.symmetric(horizontal: 5)).rounded.white.make()
                ],
              ).box.make().onTap(() {}),
            ],
          ),
        ),
      ),
    ));
  }
}
