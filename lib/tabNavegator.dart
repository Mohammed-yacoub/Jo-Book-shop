import 'package:flutter/material.dart';
import 'package:jo_book_shop/cartPage.dart';
import 'package:jo_book_shop/homePage.dart';
import 'package:jo_book_shop/login.dart';
import 'package:jo_book_shop/navigationPage.dart';

class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  final String tabItem;

  const TabNavigator({Key? key, required this.navigatorKey, required this.tabItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget child = HomePage();

    if(tabItem == "Page1")
      child = HomePage();

    else if (tabItem == "Page2")
      child = LogIn();

    else if (tabItem == "Page3")
      child = CartPage();

    else if (tabItem == "Page4")
      child = NavigationPage();

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings){
        return MaterialPageRoute(builder: (context) => child);
      },
    );
  }
}
