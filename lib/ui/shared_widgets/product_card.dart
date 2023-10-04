import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Product_Card extends StatefulWidget {
 
  @override
  State<Product_Card> createState() => _Product_CardState();
}

class _Product_CardState extends State<Product_Card> {
 
  @override
  Widget build(BuildContext context) {
  
    return  Row(
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                  width: 150,
                  height: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                width: 85,
                height: 22,
                decoration: BoxDecoration(
                  color: Color(0xFFEA4335),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0)),
                ),
                alignment: Alignment.center,
                child: Text(
                  '\$10 OFF',
                  style: GoogleFonts.nunito(
                    color: Colors.white,
                    fontSize: 12,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Container(
              child: Image.asset("assets/product2.jpg", height: 85),
              padding: EdgeInsets.all(37),
            ),
            Padding(
              padding: EdgeInsets.only(top: 113, right: 73),
              child: Text('Geo-Fresh Organic Oxygeo Tablet 75...',
                  style: GoogleFonts.nunito(
                    color: Color(0xFF000000),
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 135, left: 50),
                    child: Text(
                      '\$50',
                      style: GoogleFonts.nunito(
                        color: Color(0xFF000000).withOpacity(0.3),
                        fontSize: 13,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 135, left: 4),
                    child: Text(
                      '\$30',
                      style: GoogleFonts.nunito(
                        color: Color(0xFF34A853),
                        fontSize: 17,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 134, left: 4),
                    child: Text(
                      '/gram',
                      style: GoogleFonts.nunito(
                        color: Color(0xFF000000).withOpacity(0.3),
                        fontSize: 15,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                  width: 150,
                  height: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.white,
                  )),
            ),
            Container(
              child: Image.asset("assets/Onion.jpg", height: 85),
              padding: EdgeInsets.all(40),
            ),
            Padding(
              padding: EdgeInsets.only(top: 113, left: 75),
              child: Text(
                'Onion',
                  style: GoogleFonts.nunito(
                    color: Color(0xFF000000),
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                  ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 135, left: 50),
                    child: Text(
                      '\$50',
                      style: GoogleFonts.nunito(
                        color: Color(0xFF000000).withOpacity(0.3),
                        fontSize: 13,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 135, left: 4),
                    child: Text(
                      '\$30',
                      style: GoogleFonts.nunito(
                        color: Color(0xFF34A853),
                        fontSize: 17,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ],
    );
  }
}