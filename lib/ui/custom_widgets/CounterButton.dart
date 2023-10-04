import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CounterButton extends StatefulWidget {
  const CounterButton({super.key});

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {

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
    return  Container(
                   decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                         Color.fromRGBO(133,190,73,1.0),
                         Color.fromRGBO(105, 168, 92,1.0)
                       ],),
                       borderRadius: BorderRadius.horizontal(
                         left: Radius.circular(24.0),
                         right: Radius.circular(24.0),
                       )
                     ),
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                       crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                           decoration: BoxDecoration(
                             shape: BoxShape.circle,
                          ),
                            child: IconButton(
                                     onPressed: (){
                                      decrementCount();
                                      
                                   }, 
                                   color: Colors.transparent,
                                   icon: Icon(Icons.remove,
                                   color: Colors.white,),
                                
                             ),
                          ),
                          SizedBox(width: 10.0,),
                           Text('${count}',
                           style: GoogleFonts.nunito(
                            
                             fontSize: 14,
                             fontWeight: FontWeight.w600,
                           ),
                           ),
                           SizedBox(width: 10.0,),
                           Container(
                           decoration: BoxDecoration(
                             color: Color(0xFFFFFFFF),
                               shape: BoxShape.circle,
                             ),
                             child: IconButton(
                             onPressed: (){
                                 incrementCount();
                               }, 
                               icon: Icon(Icons.add,
                             color: CustomGreen,
                              )),
                          ),
                        ]
                        ),
                        );
  }
}