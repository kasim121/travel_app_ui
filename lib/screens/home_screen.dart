import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return 
       SingleChildScrollView(
         child: Container(
          height: MediaQuery.of(context).size.height,
          color: Color.fromRGBO(235, 224, 224, 1),
           child: Stack(
            
            children: [
              
             Container(
               height: 270.h,
               width: double.infinity,
               decoration: BoxDecoration(
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
                         child: SvgPicture.asset("",
                             color: Colors.white),
                       ),
                     ),
                     Text(
                       'Benzy infotech',
                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                     ),
                     SizedBox(
                       height: 4.h,
                     ),
                     Text(
                       '(Agent Code:14005)',
                       style:
                           TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                     ),
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
                                           style: TextStyle(
                         fontSize: 16,
                         color: Colors.black,
                         fontWeight: FontWeight.normal,
                         
                                           ),
                                           children: [
                         TextSpan(
                           text: '5235353',
                           style: TextStyle(
                         fontSize: 16,
                         color: Colors.black,
                         fontWeight: FontWeight.bold,
                         
                                           ),
                         )
                                           ]),
                                     ),
                                    
                         
                             SizedBox(
                               width: 4.w,
                             ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:8.0),
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
                               color:Colors.grey,
                             )
                           ],
                         ),
                       
                       ),
                     )
                         
                            ,SizedBox(height: 20,),
            
                   ],
                 ),
               ),
             ),
    
          ],
           
 
           ),
         ),
       );
  }
}

class CommonTextIconButton extends StatelessWidget {
  const CommonTextIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(color: Colors.blue),
        backgroundColor: Colors.white,
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ), 
      ),
      onPressed: () => {},
      icon: const Icon(Icons.send_rounded,),
      label: const Text('Top Up Balance',),
    );
  }
}
