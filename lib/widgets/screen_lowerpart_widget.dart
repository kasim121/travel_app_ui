import 'package:flutter/material.dart';

import '../resources/style_manager.dart';

class LowerPartWidget extends StatelessWidget {
  const LowerPartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
