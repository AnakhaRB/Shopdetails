import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopapp/ui/custom_widgets/price_details.dart';
import 'package:shopapp/ui/shared_widgets/caruosel_Slider.dart';
import 'package:shopapp/ui/shared_widgets/product_card.dart';

class CustomAppBarShape extends ContinuousRectangleBorder{
  @override
  Path getOuterPath(Rect rect,{TextDirection ? textDirection}){
    final path =Path();
    path.lineTo(rect.left+ 40, rect.bottom);
    path.quadraticBezierTo(rect.center.dx,rect.bottom+20, rect.right - 40, rect.bottom);
    path.lineTo(rect.right, rect.top);
    path.lineTo(rect.left, rect.top);
    path.close();
    return path;
  }
}


class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var colorScheme=Color(0xFFF7FAFF);
    return Scaffold(
     
     backgroundColor:Color(0xFFFFFFFF),

     body: CustomScrollView(
      slivers: [
        SliverAppBar(
            backgroundColor: Color(0xFFFFFFFF),
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            elevation: 0.0,
            shape: CustomAppBarShape(),
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 56),
              child: Stack(
                children: [
                  // Padding(
                  //   padding: EdgeInsets.fromLTRB(16, 56, 16,16),
                  //   child: Carousel_Img(),
                  // ),
                  Positioned(
                    bottom: 20,
                    left: 16,
                    right: 16,
                    child: Center(
                      child: Column(
            
                        children: [
                           Padding(
                             padding: EdgeInsets.fromLTRB(16, 56, 16,16),
                             child: Carousel_Img(),
                           ),
                          Text(
                            'Geo-Fresh Organic Oxygeo Tablet',
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            '750mg - 90 Tablets (Natural antioxidant Supplements For Immunity)',
                            style: GoogleFonts.nunito(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
               Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      ListTile(
                        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                        minLeadingWidth: 10,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                        leading: Icon(
                          Icons.fiber_manual_record,
                          size: 10.0,
                        ),
                        title: Text(
                          'Herbal Supplements for potent antioxidants.',
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      ListTile(
                        visualDensity: VisualDensity(horizontal: 0, vertical: 0),
                        minLeadingWidth: 10,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                        leading: Icon(
                          Icons.fiber_manual_record,
                          size: 10.0,
                        ),
                        title: Text(
                          'Eliminate free radicals naturally.',
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      ListTile(
                        minLeadingWidth: 10,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                        leading: Icon(
                          Icons.fiber_manual_record,
                          size: 10.0,
                        ),
                        title: Text(
                          'Promotes Healthy functions & cellular growth.',
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      ListTile(
                        minLeadingWidth: 10,
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                        leading: Icon(
                          Icons.fiber_manual_record,
                          size: 10.0,
                        ),
                        title: Text(
                          'USDA, GMP, EU approved, Ayurvedic proprietary without additives.',
                          style: GoogleFonts.nunito(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      // Add more content here
                    ],
                  ),
                ),
                Price_Details(), 
                Container(
                color:colorScheme,
                  child: Row(
                    children: [
                      
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 26, 144, 25),
                        child: Text('Related Items',
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color:  Color(0xFF000000),
                        ),
                        ),
                      ),
                      
                      ElevatedButton(
                        onPressed: (){}, 
                        style:ElevatedButton.styleFrom(
                          backgroundColor:Color(0xFFC4C4C4), 
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          )
                        ),
                        child: Text('View All',
                        style: GoogleFonts.nunito(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color:  Color(0xFF000000)

                        ),)
                        ),

                    ],)
                ),
                // ListView(
                //   scrollDirection: Axis.horizontal,
                //   children: [
                //     Product_Card(),
                //     // Product_Card(),
                //     // Product_Card(),
                //   ],
                // )
              ],
            ),
            )
      ],

     ),
  );
     
    
  }
}

 customCurve(){
    BorderRadius.only(
      bottomLeft: Radius.circular(40),
      bottomRight: Radius.circular(40),
    );
  }
  