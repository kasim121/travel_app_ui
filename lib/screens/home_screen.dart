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
               height: 290.h,
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
                         child: SvgPicture.asset("assets/icons/menu.svg",
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
             
                Positioned(
                  top: 200.0,
                  left: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                              height:180.h,
                              width: 360.h,
                     decoration: BoxDecoration(
                              color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                     
                         
                                 ),
                  ),
                )
     , Positioned(
      top: 160,
       child: Padding(
         padding: const EdgeInsets.only(left:30.0),
         child: Container(
          height: 290.h,
          width: 300,
           child: GridView.builder(
                     gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 80,
            childAspectRatio: 2 / 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 15),
                     itemCount: 8,
                     itemBuilder: (BuildContext ctx, index) {
                       return Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                                CircleAvatar(
         backgroundColor: Color.fromARGB(255, 246, 246, 193),
           radius: 25,
           child: SvgPicture.asset("assets/icons/train.svg"),
         ),
                                  const Text('Train',style: TextStyle(color: Colors.black,fontSize: 10),)
                         ],
                       );
                     }),
         ),
       ),
     ),
           Positioned(
            top: 360,
            left: 115,
             child: Container(
              height: 35.h,
               child: TextButton.icon(
                 style: TextButton.styleFrom(
                   textStyle: TextStyle(color: Colors.black),
                   backgroundColor: Color.fromARGB(255, 180, 217, 248),
                   shape:RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15.0),
                   ), 
                 ),
                 onPressed: () => {},
                 label: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 20,),
                 icon: Text('More Services',style: TextStyle(color: Colors.black),),
               ),
             ),
           )
            , 

              Positioned
              (
                top:400,
                child: Container(
                height: 200.h,
                width: double.infinity,
                color: Colors.pink,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context,i) {
                    return Card(child: 
                    
                    Column(
                      children: [
                          Image.network(
                                    'https://placeimg.com/640/480/any',
                                    fit: BoxFit.fill,
                                    height: 100,
                                    width: 100,
                                  ),
                        Text("Test",style: TextStyle(color: Colors.black),),
                      ],
                    ));
                  }
                ),
                          ),
              ),                                     
          ],
           
 
           ),
         ),
       );
  }
}
