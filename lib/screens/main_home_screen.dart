import 'package:benzy_itech_app/resources/asset_manager.dart';
import 'package:benzy_itech_app/screens/home_screen.dart';
import 'package:benzy_itech_app/screens/profile_screen.dart';
import 'package:benzy_itech_app/screens/trip_screen.dart';
import 'package:benzy_itech_app/screens/window_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/home_bottomnavigationbar.dart';
import 'indiarupee_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _pageIndex = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  List pages = [
    MyPage(
      child:
          //Icons.badge_sharp ,
          Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              child:
                  SvgPicture.asset(ImageAssets.home, color: Colors.blue),
              height: 30.h,
            ),
            Text(
              "Home",
              style: TextStyle(color: Colors.black, fontSize: 10.sp),
            )
          ],
        ),
      ),
      page:  HomeScreen(),
    ),
    MyPage(
      child:
          //Icons.badge_sharp ,
          Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              child: SvgPicture.asset("assets/icons/trip.svg",
                  color: Colors.black),
              height: 30.h,
            ),
            Text(
              "Trips",
              style: TextStyle(color: Colors.black, fontSize: 10.sp),
            )
          ],
        ),
      ),
      page: TripScreen(),
    ),
    MyPage(
      child:
          //Icons.window,

          Container(
        alignment: Alignment.center,
        child: SvgPicture.asset("assets/icons/window.svg", color: Colors.red),
        height: 30.h,
      ),
      page: WindowScreen(),
    ),
    MyPage(
      child:

          ///Icons.person ,
          Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              child: SvgPicture.asset("assets/icons/profile.svg"),
              height: 30.h,
            ),
            Container(
                child: Text(
              "Profile",
              style: TextStyle(color: Colors.black, fontSize: 10.sp),
            ))
          ],
        ),
      ),
      page: ProfileScreen(),
    ),
    MyPage(
      child:
          //Icons.currency_rupee,
          Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              child: SvgPicture.asset("assets/icons/indiarupee.svg"),
              height: 30.h,
            ),
            Container(
                child: Text(
              "Recharge",
              style: TextStyle(color: Colors.black, fontSize: 10.sp),
            ))
          ],
        ),
      ),
      page: IndiaRupeeScreen(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      //backgroundColor: Color.fromARGB(255, 238, 230, 233),
      // appBar: AppBar(
      //   title: const Text("Home"),
      //   centerTitle: true,
      // ),
      body: pages[_pageIndex].page,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 238, 232, 233),
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
        buttonBackgroundColor: Colors.white,
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
