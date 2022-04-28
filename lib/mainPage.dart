import 'package:flutter/material.dart';
import 'package:jo_book_shop/tabNavegator.dart';
import 'cartPage.dart';
import 'constants.dart';
import 'homePage.dart';
import 'login.dart';
import 'navigationPage.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  String _currentPage = "Page1";
  List<String> pageKeys = ["Page1", "Page2", "Page3", "Page4"];
  final Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
    "Page1": GlobalKey<NavigatorState>(),
    "Page2": GlobalKey<NavigatorState>(),
    "Page3": GlobalKey<NavigatorState>(),
    "Page4": GlobalKey<NavigatorState>(),
  };
  int _selectedIndex = 0;

  void selectTab(String tabItem, int index) {
    if(tabItem == _currentPage ){
      _navigatorKeys[tabItem]!.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentPage = pageKeys[index];
        _selectedIndex = index;
      });
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _buildOffstageNavigator("Page1"),
          _buildOffstageNavigator("Page2"),
          _buildOffstageNavigator("Page3"),
          _buildOffstageNavigator("Page4"),
        ],
      ),





      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 5,
              blurRadius: 4,
              offset: Offset(0, 3),
            )
          ],
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: const [
            BottomNavigationBarItem(label: "Home Screen", icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "LogIn/SignIn", icon: Icon(Icons.person)),
            BottomNavigationBarItem(
                label: "Shopping Cart", icon: Icon(Icons.shopping_cart)),
            BottomNavigationBarItem(
                label: "Navigation bottom",
                icon: Icon(Icons.view_headline_sharp)),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: primaryColor,
          unselectedItemColor: Colors.grey[400],
          onTap: (int index) {selectTab(pageKeys[index], index);},
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          iconSize: 20,
          enableFeedback: true,
          selectedIconTheme: const IconThemeData(size: 24),
        ),
      ),
    );
  }


  Widget _buildOffstageNavigator(String tabItem) {
    return Offstage(
      offstage: _currentPage != tabItem,
      child: TabNavigator(
        tabItem: tabItem,
        navigatorKey: _navigatorKeys[tabItem]!,
      ),
    );
  }



}
