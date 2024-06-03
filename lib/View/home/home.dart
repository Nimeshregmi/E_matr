import 'package:flutter_emart_app/View/home/Home_screen.dart';
import 'package:flutter_emart_app/controller/homeController.dart';
import 'package:flutter_emart_app/View/account/Accountscreen.dart';
import 'package:flutter_emart_app/View/cart/cartScreen.dart';
import 'package:flutter_emart_app/View/category/categoryScreen.dart';
import 'package:flutter_emart_app/consts/consts.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});
  var controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    var navbarItem = [
      BottomNavigationBarItem(
          icon: Image.asset(
            icHome,
            width: 26,
          ),
          label: home),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCategories,
            width: 26,
          ),
          label: catagory),
      BottomNavigationBarItem(
          icon: Image.asset(
            icCart,
            width: 26,
          ),
          label: cart),
      BottomNavigationBarItem(
          icon: Image.asset(
            icProfile,
            width: 26,
          ),
          label: account),
    ];
    var navBody = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const AccountScreen(),
    ];
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(child: navBody[controller.currentNavIndex.value])),
        ],
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
          backgroundColor: Colors.white,
          items: navbarItem,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
    );
  }
}
