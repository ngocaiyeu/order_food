import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:order_fast_food/modules/controller/logout_controller.dart';
import 'package:order_fast_food/modules/router/app_router.dart';
import 'package:order_fast_food/view/home/home_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  _HomeMainState createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  PersistentTabController? _controller;
  ScrollController scrollHomeController = ScrollController();
  ScrollController scrollNewsController = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [HomePage(), HomePage(), HomePage(), HomePage(), HomePage()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.home),
        title: ("Home"),
        onSelectedTabPressWhenNoScreensPushed: () {
          Get.toNamed(AppRouters.logout);
        },
        activeColorSecondary: Colors.white,
        activeColorPrimary: const Color.fromRGBO(255, 107, 67, 10),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.heart_fill),
        title: ("Favorite"),
        activeColorSecondary: Colors.white,
        activeColorPrimary: const Color.fromRGBO(255, 107, 67, 10),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.cart),
        title: ("Cart"),
        activeColorSecondary: Colors.white,
        activeColorPrimary: const Color.fromRGBO(255, 107, 67, 10),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.bell_solid),
        title: ("Notification"),
        activeColorSecondary: Colors.white,
        activeColorPrimary: const Color.fromRGBO(255, 107, 67, 10),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.profile_circled),
        title: ("Profile"),
        activeColorSecondary: Colors.white,
        activeColorPrimary: const Color.fromRGBO(255, 107, 67, 10),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style7,
    );
  }
}
