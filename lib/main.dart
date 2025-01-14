import 'package:flutter_emart_app/View/splash_screen/splash_screen.dart';
import 'consts/consts.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: const AppBarTheme(iconTheme: IconThemeData(color: darkFontGrey), backgroundColor: Colors.transparent),
          fontFamily: regular),
      // home: const SplashScreen(),
      home: const SplashScreen(),
    );
  }
}
