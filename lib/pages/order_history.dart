import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xff030E22),
        appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor: Color(0xff030E22),
          flexibleSpace: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 50.0,
                  left: 10,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/box_left.png',
                      width: 40,
                    ),
                    SizedBox(width: 90),
                    Text(
                      'Order History',
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(
                    child: Text(
                      'Pending',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Packed',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'On The Way',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Arrived',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Scaffold(
              backgroundColor: Color(0xff030E22),
              body: Column(
                children: [
                  SizedBox(height: 24),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 342,
                        height: 176,
                        decoration: BoxDecoration(
                          color: Color(0xff030E22),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Scaffold(
              backgroundColor: Color(0xff030E22),
              body: Column(
                children: [
                  SizedBox(height: 24),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 342,
                        height: 156,
                        decoration: BoxDecoration(
                          color: Color(0xff2C3545),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/grey_time.png',
                                  width: 80,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "hurray.. the seller is preparing \nyour order wait a little longer\n okay?",
                                        style: GoogleFonts.montserrat(
                                          color: Color(0xffF8F7FD),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Order #20181111121 is being \nprocessed",
                                        style: GoogleFonts.montserrat(
                                          color: Color.fromARGB(
                                              255, 205, 208, 140),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        '10-05-2022 13:20',
                                        style: GoogleFonts.montserrat(
                                          color:
                                              Color.fromARGB(255, 225, 43, 19),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Scaffold(
              backgroundColor: Color(0xff030E22),
              body: Column(
                children: [
                  SizedBox(height: 24),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        width: 342,
                        height: 176,
                        decoration: BoxDecoration(
                          color: Color(0xff030E22),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Scaffold(
              backgroundColor: Color(0xff030E22),
              body: Column(
                children: [
                  SizedBox(height: 24),
                  Center(
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                          width: 342,
                          height: 176,
                          decoration: BoxDecoration(
                            color: Color(0xff030E22),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [],
                              ),
                            ],
                          )),
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
