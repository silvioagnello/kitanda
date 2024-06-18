import 'package:flutter/material.dart';
import 'package:kitanda/src/base/view/tabs/cart_tab.dart';
import 'package:kitanda/src/base/view/tabs/home_tab.dart';
import 'package:kitanda/src/base/view/tabs/orders_tab.dart';
import 'package:kitanda/src/base/view/tabs/profile_tab.dart';

import '../../commons/themes/theme.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentPage = 0;

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomeTab(),
          CartTab(),
          OrdersTab(),
          ProfileTab(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (atualPage) {
            setState(() {
              currentPage = atualPage;
              pageController.animateToPage(currentPage,
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.linear);
              // pageController.jumpToPage(currentPage);
            });
          },
          currentIndex: currentPage,
          unselectedItemColor: Colors.white.withAlpha(100),
          selectedItemColor: Colors.white,
          backgroundColor: MaterialTheme.lightScheme().primaryContainer,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined), label: 'Carrinho'),
            BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Pedidos'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: 'Perfil'),
          ]),
    );
  }
}
