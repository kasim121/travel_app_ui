import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../models/ticket_offer.dart';
import '../models/tripdetails_class.dart';
import '../resources/asset_manager.dart';

import '../resources/style_manager.dart';
import '../widgets/lowerpart_widget.dart';
import '../widgets/topwidgetpart_first.dart';

class WindowScreen extends StatefulWidget {
  const WindowScreen({super.key});

  @override
  State<WindowScreen> createState() => _WindowScreenState();
}

class _WindowScreenState extends State<WindowScreen> {
  final int index = 0;
  List<TripDetails> myTripList = [
    TripDetails(textData: "Flight", imageData: ImageAssets.flight),
    TripDetails(textData: "Hotels", imageData: ImageAssets.flight),
    TripDetails(textData: "Bus", imageData: ImageAssets.flight),
    TripDetails(textData: "Holidays", imageData: ImageAssets.flight),
    TripDetails(textData: "Cruise", imageData: ImageAssets.flight),
    TripDetails(textData: "Holidays", imageData: ImageAssets.flight),
    TripDetails(textData: "Train", imageData: ImageAssets.flight),
    TripDetails(textData: "Visa", imageData: ImageAssets.flight),
  ];
  List<TicketsOffers> myTicketsOffers = [
    TicketsOffers(
        textData: "More Details", imageData: ImageAssets.flightLongImage1),
    TicketsOffers(
        textData: "More Details", imageData: ImageAssets.flightLongImage2),
    TicketsOffers(
        textData: "More Details", imageData: ImageAssets.flightLongImage1),
    TicketsOffers(
        textData: "More Details", imageData: ImageAssets.flightLongImage2),
    TicketsOffers(
        textData: "More Details", imageData: ImageAssets.flightLongImage2),
    TicketsOffers(
        textData: "More Details", imageData: ImageAssets.flightLongImage1),
    TicketsOffers(
        textData: "More Details", imageData: ImageAssets.flightLongImage2),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: const Color.fromRGBO(235, 224, 224, 1),
        child: Stack(
          children: [
            const TopPartWidget(),

            Positioned(
              top: 170.0,
              left: 1,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 180.h,
                  width: 360.h,
                  decoration: const BoxDecoration(
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
                child: SizedBox(
                  height: 290.h,
                  width: 300,
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
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
                                  const Color.fromARGB(255, 246, 246, 193),
                              radius: 25,
                              child: SvgPicture.asset(
                                myTripList[index].imageData.toString(),
                              ),
                            ),
                            Text(
                              myTripList[index].textData.toString(),
                              style: getTripTextStyle(color: Colors.grey),
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
              child: SizedBox(
                height: 35.h,
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(color: Colors.black),
                    backgroundColor: const Color.fromARGB(255, 180, 217, 248),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () => {},
                  label: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                    size: 15,
                  ),
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'More Services',
                      style: getMoreServiceStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 365,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SizedBox(
                  height: 225.h,
                  width: 390.w,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: myTicketsOffers.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                          width: 180.w,
                          height: 140.h,
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                           
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5,
                            margin: const EdgeInsets.all(10),
                             child: Column(
                              children: [
                                Image.network(
                                  myTicketsOffers[index].imageData.toString(),
                                  fit: BoxFit.fill,
                                  height: 170.h,
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(myTicketsOffers[index].textData.toString(),
                                    style:
                                        getLightTextStyle(color: Colors.black))
                              ],
                            ),
                           
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            
            const LowerWidgetPart(),
            
          ],
        ),
      ),
    );
  }
}


