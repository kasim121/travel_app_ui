import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../models/tripdetails_class.dart';
import '../resources/asset_manager.dart';
import '../resources/color_manager.dart';
import '../resources/font_manager.dart';
import '../resources/style_manager.dart';
import '../widgets/screen_lowerpart_widget.dart';

class WindowScreen extends StatefulWidget {
  @override
  State<WindowScreen> createState() => _WindowScreenState();
}

class _WindowScreenState extends State<WindowScreen> {
  final int index = 0;
  List<TripDetails> myTripList = [
    TripDetails(textData: "Flight", imageData: ImageAssets.flight),
    TripDetails(textData: "Hotels", imageData: ImageAssets.hotel),
    TripDetails(textData: "Bus", imageData: ImageAssets.bus),
    TripDetails(textData: "Holidays", imageData: ImageAssets.flight),
    TripDetails(textData: "Cruise", imageData: ImageAssets.flight),
    TripDetails(textData: "Holidays", imageData: ImageAssets.flight),
    TripDetails(textData: "Train", imageData: ImageAssets.train),
    TripDetails(textData: "Visa", imageData: ImageAssets.flight),
    //"Flight" ,"Hotels", "Bus", "Holidays", "Cruise", "Holidays", "Train", "Visa",
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(235, 224, 224, 1),
        child: Stack(
          children: [
            Container(
              height: 270.h,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.indigo,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 24.0, right: 16),
                        child: SvgPicture.asset(ImageAssets.hamburgermenu,
                            color: Colors.white),
                      ),
                    ),
                    Text('Benzy infotech',
                        style: getBoldTextStyle(color: Colors.white)),
                    SizedBox(
                      height: 4.h,
                    ),
                    Text('(Agent Code:14005)',
                        style: getLightTextStyle(color: Colors.white)),
                    SizedBox(
                      height: 8.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 55.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        height: 40.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              text: TextSpan(
                                  text: 'Main Balance : ₹',
                                  style:
                                      getSemiBoldTextStyle(color: Colors.grey),
                                  children: [
                                    TextSpan(
                                      text: '5235353',
                                      style:
                                          getBoldTextStyle(color: Colors.grey),
                                    )
                                  ]),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: VerticalDivider(
                                color: Colors.grey,
                                thickness: 1,
                              ),
                            ),
                            SizedBox(
                              width: 4.w,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              top: 170.0,
              left: 1,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 180.h,
                  width: 360.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 140,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: Container(
                  height: 290.h,
                  width: 300,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 80,
                          childAspectRatio: 2 / 2,
                          crossAxisSpacing: 5,
                          mainAxisSpacing: 15),
                      itemCount: myTripList.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 246, 246, 193),
                              radius: 25,
                              child: SvgPicture.asset(
                                myTripList[index].imageData.toString(),
                              ),
                            ),
                            Text(
                              myTripList[index].textData.toString(),
                              style: getSemiBoldTextStyle(color: Colors.grey),
                            )
                          ],
                        );
                      }),
                ),
              ),
            ),
            Positioned(
              top: 330,
              left: 115,
              child: Container(
                height: 35.h,
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(color: Colors.black),
                    backgroundColor: Color.fromARGB(255, 180, 217, 248),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () => {},
                  label: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 15,
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'More Services',
                      style: getSemiBoldTextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 365,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                  height: 225.h,
                  width: 390.w,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int i) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 180.w,
                          height: 140.h,
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Column(
                              children: [
                                Image.network(
                                  ImageAssets.flightLongImage,
                                  fit: BoxFit.fill,
                                  height: 170.h,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text('More Details',
                                    style:
                                        getLightTextStyle(color: Colors.black))
                              ],
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(10),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Positioned(
              top: 555,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(color: Colors.blue),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                            ),
                            onPressed: () => {},
                            icon: const Icon(
                              Icons.currency_rupee,
                              color: Color.fromARGB(255, 229, 101, 101),
                            ),
                            label: Text(
                              'Top Up Balance',
                              style: getRegularTextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(
                                  color: Color.fromARGB(255, 229, 101, 101)),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                            ),
                            onPressed: () => {},
                            icon: const Icon(
                              Icons.calendar_month,
                              color: Color.fromARGB(255, 229, 101, 101),
                            ),
                            label: Text(
                              'Travel Calender',
                              style: getRegularTextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(
                                color: Color.fromARGB(255, 229, 101, 101),
                              ),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                            ),
                            onPressed: () => {},
                            icon: const Icon(
                              Icons.campaign,
                              color: Color.fromARGB(255, 229, 101, 101),
                            ),
                            label: Text(
                              'Notice Board',
                              style: getRegularTextStyle(color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          TextButton.icon(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.0),
                              ),
                            ),
                            onPressed: () => {},
                            icon: const Icon(
                              Icons.pan_tool,
                              color: Color.fromARGB(255, 229, 101, 101),
                            ),
                            label: Text(
                              'Hold Itinearies',
                              style: getRegularTextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                   
                    const LowerPartWidget(),
                  ],
                ),
              ),
            ),
            //  Container(height: 20,color: Colors.amber,),
          ],
        ),
      ),
    );
  }
}



