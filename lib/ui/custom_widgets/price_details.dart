import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopapp/ui/custom_widgets/CounterButton.dart';

class Price_Details extends StatefulWidget {
 
  
  @override
  State<Price_Details> createState() => _Price_DetailsState();
}

class _Price_DetailsState extends State<Price_Details> {
  int count = 1;
  Color CustomGreen = Color.fromRGBO(105, 168, 92, 1);
  void incrementCount(){
   setState(() {
     count++;
   });
  }

  void decrementCount(){
    setState(() {
      if(count > 1)
      {
        count--;
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width:MediaQuery.of(context).size.width,
        height: 100.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: 
            [
              Color.fromRGBO(133,190,73,1.0),
              Color.fromRGBO(105, 168, 92,1.0)
            ],
            ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(31, 20,31,10),
                child: Text('₹${30} per gram',
                               style: GoogleFonts.nunito(
                                fontSize: 12,
                               fontWeight: FontWeight.w700,
                                color:Color(0xFFFFFFFF),
                                decoration: TextDecoration.none,
                                ),)
                ),
                Row( 
                  mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                  children: [ Text('₹${300} Total',
                                     style: GoogleFonts.nunito(
                                       fontSize: 24,
                                       fontWeight: FontWeight.w700,
                                       color: Color(0xFFFFFFFF),
                                       decoration: TextDecoration.none,
                                   ),),
        
                                   CounterButton(),
                                    //  Text(' Total',
                                    //    style: GoogleFonts.nunito(
                                    //      fontSize: 12,
                                    //      fontWeight: FontWeight.w700,
                                    //      color:Color(0xFFFFFFFF),
                                    //      decoration: TextDecoration.none,
                                    //    ),
                                    //  ),
                  
                ],)
            ],
          ),
        ),
      ),
      // child: Container(
      //  width: 50,
      //  height: 50,
      //  decoration: BoxDecoration(
      //         gradient:LinearGradient(
      //           colors: [
      //             Color.fromRGBO(133,190,73,1.0),
      //             Color.fromRGBO(105, 168, 92,1.0)
      //           ],
      //           begin: Alignment.topLeft,
      //           end: Alignment.bottomRight
      //           ),
      //           shape: BoxShape.rectangle
      //            ),
      //            child:Row(
      //             mainAxisAlignment: MainAxisAlignment.start,
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //              children: [
      //              Padding(
      //                padding: const EdgeInsets.all(8.0),
      //                child: Column(
      //                  children: [
                         
      //                        Text('₹${30} per gram',
      //                        style: GoogleFonts.nunito(
      //                         fontSize: 12,
      //                         fontWeight: FontWeight.w700,
      //                         color:Color(0xFFFFFFFF),
      //                         decoration: TextDecoration.none,
      //                        ),
                             
      //                        ),
      //                       Row(
      //                         children: [
      //                           Text('₹${300}',
      //                             style: GoogleFonts.nunito(
      //                               fontSize: 24,
      //                               fontWeight: FontWeight.w700,
      //                               color: Color(0xFFFFFFFF),
      //                               decoration: TextDecoration.none,
      //                             ),),
      //                             Text(' Total',
      //                               style: GoogleFonts.nunito(
      //                                 fontSize: 12,
      //                                 fontWeight: FontWeight.w700,
      //                                 color:Color(0xFFFFFFFF),
      //                                 decoration: TextDecoration.none,
      //                               ),
      //                               ),
      //                         ],
      //                       ),
      //                  ],
      //                ),
      //              ),
      //              Container(
      //               decoration: BoxDecoration(
      //                 gradient: LinearGradient(colors: [
      //                   Color.fromRGBO(133,190,73,1.0),
      //                    Color.fromRGBO(105, 168, 92,1.0)
      //                 ],),
      //                 borderRadius: BorderRadius.horizontal(
      //                   left: Radius.circular(24.0),
      //                   right: Radius.circular(24.0),
      //                 )
      //               ),
      //                child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.end,
      //                 crossAxisAlignment: CrossAxisAlignment.center,
      //                  children: [
      //                    Container(
      //                     decoration: BoxDecoration(
      //                       shape: BoxShape.circle,
      //                     ),
      //                      child: IconButton(
      //                               onPressed: (){
      //                                decrementCount();
                                      
      //                             }, 
      //                             color: Colors.transparent,
      //                             icon: Icon(Icons.remove,
      //                             color: Colors.white,),
                                
      //                       ),
      //                    ),
      //                    SizedBox(width: 10.0,),
      //                     Text('${count}',
      //                     style: GoogleFonts.nunito(
                            
      //                       fontSize: 14,
      //                       fontWeight: FontWeight.w600,
      //                     ),
      //                     ),
      //                     SizedBox(width: 10.0,),
      //                     Container(
      //                       decoration: BoxDecoration(
      //                         color: Color(0xFFFFFFFF),
      //                         shape: BoxShape.circle,
      //                       ),
      //                       child: IconButton(
      //                         onPressed: (){
      //                           incrementCount();
      //                         }, 
      //                         icon: Icon(Icons.add,
      //                         color: CustomGreen,
      //                         )),
      //                     )
      //                  ],
      //                ),
      //              ),
      //              ],
      //            ),
      
      // ),
    );
  }
}