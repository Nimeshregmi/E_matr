import 'package:flutter_emart_app/View/auth/loginscreen.dart';
import 'package:flutter_emart_app/View/home/home.dart';
import 'package:flutter_emart_app/common_widget/appLogo.dart';

import '../../consts/consts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        auth.authStateChanges().listen((User? user) {
          if(user==null && mounted){
            Get.to(() => const LoginScreen());
          }else{
            Get.to(() =>  Home());
          }
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    changeScreen();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: redColor,
        body: VStack(crossAlignment: CrossAxisAlignment.center, [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              icSplashBg,
            ),
          ),
          20.heightBox,
          appLogowidget(),
          10.heightBox,
          appname.text.white.fontFamily(bold).size(22).make(),
          appversion.text.white.make(),
          const Spacer(),
          credits.text.fontFamily(semibold).make()
        ]).centered());
  }
}
