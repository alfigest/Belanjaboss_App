import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductList extends StatelessWidget {
  String imageUrl;
  String name;
  String ratings;
  String amount;
  String price;

  ProductList(
      {this.imageUrl, this.amount, this.name, this.price, this.ratings});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            width: 164,
            height: 260,
            decoration: BoxDecoration(
              color: Color(0xff2C3545),
              borderRadius: BorderRadius.circular(28),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    imageUrl,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      left: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: GoogleFonts.montserrat(
                            color: Color(0xffF8F7FD),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Image.asset(
                              ratings,
                              width: 88,
                              height: 16,
                            ),
                            SizedBox(width: 5),
                            Text(
                              amount,
                              style: GoogleFonts.montserrat(
                                color: Color(0xffCFCFCF),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          price,
                          style: GoogleFonts.montserrat(
                            color: Color(0xffF8F7FD),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
