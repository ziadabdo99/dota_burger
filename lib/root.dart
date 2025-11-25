import 'package:dota_burger/core/constants/app_colors.dart';
import 'package:dota_burger/features/auth/views/profile_view.dart';
import 'package:dota_burger/features/cart/views/cart_view.dart';
import 'package:dota_burger/features/home/views/home_view.dart';
import 'package:dota_burger/features/orderHistory/views/order_history_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  late PageController controller = PageController();
  late List<Widget> screens;
  int currentScreen = 0;
  @override
  void initState() {
    controller = PageController(initialPage: currentScreen);
    screens = [HomeView(), CartView(), OrderHistoryView(), ProfileView()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: controller, children: screens),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.primaryColor,
        ),
        child: BottomNavigationBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.secondaryColor,
          unselectedItemColor: const Color.fromARGB(255, 107, 106, 106),
          currentIndex: currentScreen,
          onTap: (index) {
            setState(() {
              currentScreen = index;
              controller.jumpToPage(index);
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                size: currentScreen == 0 ? 35 : 24,
                CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                size: currentScreen == 1 ? 35 : 24,
                CupertinoIcons.cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                size: currentScreen == 2 ? 35 : 24,
                Icons.local_restaurant_sharp),
              label: 'Orders history',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                size: currentScreen == 3 ? 35 : 24,
                CupertinoIcons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
