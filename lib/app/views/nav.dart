import 'package:appointment/app/models/appointment.dart';
import 'package:appointment/app/views/appointment_page/appointment.dart';
import 'package:appointment/app/views/doctor_details_page/doctor_details.dart';
import 'package:appointment/app/views/home_page/home.dart';
import 'package:appointment/helpers/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../../dummy.dart';

class Nav extends StatefulWidget {
  final BuildContext menuScreenContext;
  // ignore: use_key_in_widget_constructors
  const Nav({@required this.menuScreenContext});

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  PersistentTabController _controller;
  bool _hideNavBar;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 1);
    _hideNavBar = false;
  }

  List<Widget> buildScreens() {
    return [const DoctorDetails(), const Home(), const AppointmentWidget()];
  }

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(MaterialCommunityIcons.clock),
        title: "Appointments",
        iconSize: 28,
        activeColorPrimary: mainColor,
        inactiveColorPrimary: secondaryColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Entypo.home),
        title: "Home",
        iconSize: 28,
        activeColorPrimary: mainColor,
        inactiveColorPrimary: secondaryColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(FontAwesome.user),
        title: "Setting",
        iconSize: 28,
        activeColorPrimary: mainColor,
        inactiveColorPrimary: secondaryColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: buildScreens(),
        items: navBarsItems(),
        confineInSafeArea: true,
        hideNavigationBar: false,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
            ? 0.0
            : kBottomNavigationBarHeight,
        hideNavigationBarWhenKeyboardShows: true,
        margin: const EdgeInsets.all(20.0),
        popActionScreens: PopActionScreensType.all,
        bottomScreenMargin: 0.0,
        decoration: NavBarDecoration(
            colorBehindNavBar: Colors.indigo,
            boxShadow: [
              BoxShadow(
                color: secondaryColor.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              )
            ],
            borderRadius: BorderRadius.circular(20.0)),
        popAllScreensOnTapOfSelectedTab: true,
        itemAnimationProperties: const ItemAnimationProperties(
          duration: Duration(milliseconds: 400),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: const ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle:
            NavBarStyle.style12, // Choose the nav bar style with this property
      ),
    );
  }
}
