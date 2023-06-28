import 'package:benzy_itech_app/resources/color_manager.dart';
import 'package:benzy_itech_app/screens/home_screen.dart';
import 'package:benzy_itech_app/screens/profile_screen.dart';
import 'package:benzy_itech_app/screens/trip_screen.dart';
import 'package:benzy_itech_app/screens/window_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'indiarupee_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pageIndex = 0;
  final GlobalKey _bottomNavigationKey = GlobalKey();

  List pages = [
    MyPage(
      child:
          //Icons.badge_sharp ,
          Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Icon(
              Icons.home,
              size: 30,
              color: ColorManager.blue,
            ),
            Text(
              "Home",
              style: TextStyle(color: Colors.black, fontSize: 10.sp),
            )
          ],
        ),
      ),
      page: const HomeScreen(),
    ),
    MyPage(
      child:
          //Icons.badge_sharp ,
          Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Icon(
              Icons.business_center,
              size: 30,
              color: ColorManager.grey,
            ),
            Text(
              "Trips",
              style: TextStyle(color: Colors.black, fontSize: 10.sp),
            )
          ],
        ),
      ),
      page: const TripScreen(),
    ),
    MyPage(
      child:
          //Icons.window,

          Icon(
        Icons.window,
        size: 30,
        color: ColorManager.white,
      ),
      page: const WindowScreen(),
    ),
    MyPage(
      child:

          ///Icons.person ,
          Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Icon(
              Icons.account_circle,
              size: 30,
              color: ColorManager.grey,
            ),
            Text(
              "Profile",
              style: TextStyle(color: Colors.black, fontSize: 10.sp),
            )
          ],
        ),
      ),
      page: const ProfileScreen(),
    ),
    MyPage(
      child:
          //Icons.currency_rupee,
          Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Icon(
              Icons.currency_rupee,
              size: 30,
              color: ColorManager.grey,
            ),
            Text(
              "Recharge",
              style: TextStyle(color: Colors.black, fontSize: 10.sp),
            )
          ],
        ),
      ),
      page: const IndiaRupeeScreen(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //backgroundColor: Color.fromARGB(255, 238, 230, 233),
      // appBar: AppBar(
      //   title: const Text("Home"),
      //   centerTitle: true,
      // ),
      body: pages[_pageIndex].page,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor:  const Color.fromRGBO(235, 224, 224, 1),
        key: _bottomNavigationKey,
        index: 0,
        height: 50.h,
        items: pages
            .map((p) => SizedBox(
                  child: p.child,
                  height: 50.h,
                  width: 50.w,
                ))
            .toList(),
        color: Colors.white,
        buttonBackgroundColor: _pageIndex ==2?Colors.red:Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
      ),
    );
  }
}

class MyPage {
  final Widget? child;
  final Widget? page;

  MyPage({required this.child, required this.page});
}
