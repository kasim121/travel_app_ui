// import 'package:benzy_itech_app/screens/home_screen.dart';
// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// import '../screens/indiarupee_screen.dart';
// import '../screens/profile_screen.dart';
// import '../screens/trip_screen.dart';
// import '../screens/window_screen.dart';

// class HomeBottomNavigationBar extends StatefulWidget {
//   @override
//   State<HomeBottomNavigationBar> createState() =>
//       _HomeBottomNavigationBarState();
// }

// class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
 
//   @override
//   Widget build(BuildContext context) {
//     return 
   
//   }
// }
/*

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
 MyRoute(
 
      child:
          //Icons.badge_sharp ,
          Container(
        alignment: Alignment.center,
        child: SvgPicture.asset("assets/icons/home.svg", color: Colors.blue),
      ),
       Text("home",style: TextStyle(color: Colors.red),),
      page: const HomeScreen(),
    ),
    
    MyRoute(
       Text("trip",style: TextStyle(color: Colors.red),),
      child:
          //Icons.badge_sharp ,
          Container(
        alignment: Alignment.center,
        child: SvgPicture.asset("assets/icons/trip.svg", color: Colors.black),
      ),
      page: TripScreen(),
    ),
    
    MyRoute(
    Text("window",style: TextStyle(color: Colors.red),),
      child:
          //Icons.window,
          Column(
            children: [
              Container(
        alignment: Alignment.center,
        child: SvgPicture.asset("assets/icons/window.svg", color: Colors.red),
      ),
     Text("profile",style: TextStyle(color: Colors.red),),
            ],
          ),
      page: WindowScreen(),
    ),
    MyRoute(
      Text("",style: TextStyle(color: Colors.red),),
      child:

          ///Icons.person ,
          Container(
        alignment: Alignment.center,
        child: SvgPicture.asset("assets/icons/profile.svg"),
      ),
      page: ProfileScreen(),
    ),
    MyRoute(
   
      child:
          //Icons.currency_rupee,
          Container(
        alignment: Alignment.center,
        child: SvgPicture.asset("assets/icons/indiarupee.svg"),
      ),
          Text("data"),
      page: IndiaRupeeScreen(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: pages[_pageIndex].page,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.grey,
        key: _bottomNavigationKey,
        index: 0,
        height: 70.h,
        items: pages
            .map((p) => SizedBox(
                  child: p.child,
                  height: 30.h,
                  width: 30.w,
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

class MyRoute {
  final Widget? child;
  final Widget? page;
    final Widget? Text;

  MyRoute(this.Text, {required this.child, required this.page});
}

*/
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _index = 0;
//   @override
//   Widget build(BuildContext context) {
//     return 
//        Material(
//         color: Colors.white,
//          child: SingleChildScrollView(
//            child: Stack(children: [
                
//              Container(
//                height: MediaQuery.of(context).size.height,
//                width: double.infinity,
//                decoration: BoxDecoration(
//                  color: Colors.white,
//                ),
//                child: Padding(
//                  padding: const EdgeInsets.only(top: 30.0),
//                  child: 
//                  ListView.builder(
//           itemCount: 5,
//           itemBuilder: (BuildContext context, int index) {
//             return ListTile(
//                 leading: const Icon(Icons.list),
//                 trailing: const Text(
//                   "GFG",
//                   style: TextStyle(color: Colors.green, fontSize: 15),
//                 ),
//                 title: Text("List item $index"));
//           }),
//                ),
//              ),
//            Container(
//                height: 250.h,
//                width: double.infinity,
//                decoration: BoxDecoration(
//                  color: Colors.indigo,
//                ),
//                child: Padding(
//                  padding: const EdgeInsets.only(top: 30.0),
//                  child: SingleChildScrollView(
//                   physics: NeverScrollableScrollPhysics(),
                  
//                    child: Column(
//                      children: [
//                        Align(
//                          alignment: Alignment.topRight,
//                          child: Padding(
//                            padding: const EdgeInsets.only(top: 24.0, right: 16),
//                            child: SvgPicture.asset("assets/icons/menu.svg",
//                                color: Colors.white),
//                          ),
//                        ),
//                        Text(
//                          'Benzy infotech',
//                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                        ),
//                        SizedBox(
//                          height: 4.h,
//                        ),
//                        Text(
//                          '(Agent Code:14005)',
//                          style:
//                              TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
//                        ),
//                        SizedBox(
//                          height: 8.h,
//                        ),
//                        Padding(
//                          padding: const EdgeInsets.symmetric(horizontal: 55.0),
//                          child: Container(
//                           decoration: BoxDecoration(
//                                color: Colors.white,
//                              borderRadius: BorderRadius.all(
//                                Radius.circular(30.0),
//                              ),
//                            ),
//                        height: 40.h,
//                            child: Row(
//                              mainAxisAlignment: MainAxisAlignment.center,
//                              children: [
//                                   RichText(
//                                          text: TextSpan(
//                                              text: 'Main Balance : ₹',
//                                              style: TextStyle(
//                            fontSize: 16,
//                            color: Colors.black,
//                            fontWeight: FontWeight.normal,
                           
//                                              ),
//                                              children: [
//                            TextSpan(
//                              text: '5235353',
//                              style: TextStyle(
//                            fontSize: 16,
//                            color: Colors.black,
//                            fontWeight: FontWeight.bold,
                           
//                                              ),
//                            )
//                                              ]),
//                                        ),
                                      
                           
//                                SizedBox(
//                                  width: 4.w,
//                                ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(vertical:8.0),
//                           child: VerticalDivider(
//                           color: Colors.grey,
//                           thickness: 1,
//                         ),
//                         ),
//                                    SizedBox(
//                                  width: 4.w,
//                                ),
//                                Icon(
//                                  Icons.arrow_forward_ios,
//                                  size: 15,
//                                  color:Colors.grey,
//                                )
//                              ],
//                            ),
                         
//                          ),
//                        )
                         
             
//                      ],
//                    ),
//                  ),
//                ),
//              ),
         
//            ]),
//          ),
//        );
//   }
// }
