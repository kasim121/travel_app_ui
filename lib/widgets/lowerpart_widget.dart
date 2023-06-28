import 'package:flutter/material.dart';

import '../resources/style_manager.dart';

class LowerWidgetPart extends StatelessWidget {
  const LowerWidgetPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return 
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
           Padding(
      padding: const EdgeInsets.only(left: 20.0, bottom: 40),
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
      Icons.legend_toggle,
      color: Color.fromARGB(255, 229, 101, 101),
    ),
    label: Text(
      'Sales',
      style: getRegularTextStyle(color: Colors.black),
    ),
          ),
          const SizedBox(
    width: 20,
          ),
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
      Icons.person,
      color: Color.fromARGB(255, 229, 101, 101),
    ),
    label: Text(
      'My Account',
      style: getRegularTextStyle(color: Colors.black),
    ),
          ),
        ],
      ),
    ),
  
          ],
        ),
      ),
    );
  
  }
}
