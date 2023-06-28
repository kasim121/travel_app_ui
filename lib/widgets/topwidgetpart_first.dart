import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../resources/asset_manager.dart';
import '../resources/style_manager.dart';

class TopPartWidget extends StatelessWidget {
  const TopPartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
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
                decoration: const BoxDecoration(
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
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8.0),
                      child: VerticalDivider(
                        color: Colors.grey,
                        thickness: 1,
                      ),
                    ),
                    SizedBox(
                      width: 4.w,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
 
  }
}
