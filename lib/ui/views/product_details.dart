// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:shopapp/ui/custom_widgets/price_details.dart';
// import 'package:shopapp/ui/shared_widgets/caruosel_slider.dart';
// import 'package:google_fonts/google_fonts.dart';

// class Product_details extends StatelessWidget {
//   const Product_details({super.key});
  
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor:Color(0xFFFFFFFF),
//       appBar: AppBar(),
//       body:Column(
//         children: [
//          Container(
//            child: Row(
//             children: [
//               Icon(Icons.arrow_back),
//               SizedBox(width: 10.0,),       
//             ],
           
//            ),
//          ),
//        Carousel_Img(),
        
//          Container(
//            child: Column(
//             children: [
//               Text('Geo-Fresh Orangic Oxygeo Tablet',
//               style: GoogleFonts.nunito(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 18,
//               ),),
//               Text('750mg - 90 Tablets (Natural antioxidant Supplements For Immunity)',
//               style: GoogleFonts.nunito(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 18,
//               ),
//               ),
//             ],
//            ),
//          ),
//         Container(
//           child: Column(
//             children: [
//               ListTile(
//                 leading: Icon(Icons.fiber_manual_record),
//                 title:Text('Herbal Supplements for potent antioxidants.',
//                 style: GoogleFonts.nunito(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600,
//                 ),
//                 ) ,
//               ),
//               ListTile(
//                 leading: Icon(Icons.fiber_manual_record),
//                 title: Text('Eliminate free radicals naturally.',
//                 style: GoogleFonts.nunito(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600,
//                 ),
//                 ),
//               ),
//                ListTile(
//                 leading: Icon(Icons.fiber_manual_record),
//                 title:Text('Promotes Healthy functions & cellular growth.',
//                 style: GoogleFonts.nunito(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600,
//                 ),) ,
//               ),
//                ListTile(
//                 leading: Icon(Icons.fiber_manual_record),
//                 title:Text('USDA,GMP,EU approved, Ayurvedic proprietary without additives.',
//                 style: GoogleFonts.nunito(
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600,
//                 ),
//                 ) ,
//               ),
//             ],
//            ),
//         ),
//          Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: 
//               [
//                   Color.fromRGBO(133,190,73,1.0),
//                   Color.fromRGBO(105, 168, 92,1.0),
//               ],
//                 begin:Alignment.centerLeft,
//                 end: Alignment.centerRight),
          

//           ),
//          ),
//         Row(
//           children: [
//             Container(

//               child: Padding(
//                 padding: const EdgeInsets.fromLTRB(30, 599, 231, 188),
//                 child: Text('Related Items',
//                 style: GoogleFonts.nunito(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w600,
//                 ),),
                
                
//               ),
            
             

//             ),
//           ],
//         )

//         ],
//       )
      
//     );
//   }
// }