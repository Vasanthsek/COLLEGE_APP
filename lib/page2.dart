import 'package:college_app/page3.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Page2 extends StatelessWidget {
  Page2({super.key});

  List<String> collage = [
    "images/col1.png",
    "images/col2.png",
    "images/col3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(children: [
            Container(
              height: 153.h,
              width: double.infinity.w,
              decoration: BoxDecoration(
                  color: Color(0xFF0E3C6E),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.w),
                      bottomRight: Radius.circular(30.w))),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(37.w, 60.h, 0, 40.h),
              child: Row(
                children: [
                  Container(
                    height: 53.h,
                    width: 279.w,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(15.w))),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 17.w,
                          ),
                          Padding(
                            padding: EdgeInsets.only(bottom: 5.h),
                            child: SizedBox(
                                height: 15.h,
                                width: 15.w,
                                child: Icon(
                                  Icons.search,
                                  color: Color(0xFFD6D6D6),
                                )),
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          Text(
                            "Search for colleges, schools.....",
                            style: GoogleFonts.lato(color: Color(0xFFD6D6D6)),
                          )
                        ]),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Container(
                    height: 53.h,
                    width: 55.w,
                    child: Center(
                        child: Icon(
                      Icons.keyboard_voice,
                      color: Color(0xFF0E3C6E),
                    )),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15.w))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 179.h,
                left: 18.w,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      5,
                      (index) => Padding(
                        padding: EdgeInsets.only(right: 18.w),
                        child: Container(
                          height: 27.h,
                          width: 133.w,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.w))),
                          child: Center(
                              child: Text(
                            "MSVH Engineering College",
                            style: GoogleFonts.lato(
                              fontSize: 10.sp,
                            ),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 235.h, left: 37.w),
              child: Column(
                children: [
                  ...List.generate(
                    3,
                    (index) => cd(collage[index], context),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

Widget cd(String img, BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(bottom: 15.h),
    child: Stack(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Page3(),
                ));
          },
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.w),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.w),
              ),
              height: 250.h,
              width: 354.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20.w)),
                      child: Image.asset(
                        img,
                        height: 116.h,
                        width: double.infinity.w,
                        fit: BoxFit.cover,
                      )),
                  SizedBox(
                    height: 9.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 18.w,
                      ),
                      Text(
                        "GHJK Engineering College",
                        style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700, fontSize: 14.sp),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 18.w),
                        child: Container(
                          height: 22.h,
                          width: 52.w,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.w)),
                              color: Colors.green),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "3.5",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13.sp),
                              ),
                              Icon(
                                IconData(
                                  0xe5f9,
                                  fontFamily: 'MaterialIcons',
                                ),
                                color: Colors.white,
                                size: 14.w,
                              ),
                            ],
                          ),
                        ),
                      ),
                      //SizedBox(width: 18.w,),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 18.w,
                      ),
                      Container(
                          height: 30.h,
                          width: 207.w,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit.sghsdjsas ",
                            style: GoogleFonts.lato(
                                color: Color(0xFF8E8E8E),
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w600),
                          )),
                      SizedBox(
                        width: 40.w,
                      ),
                      Flexible(
                        child: Container(
                          height: 21.h,
                          width: 77.w,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.w)),
                              color: Color(0xFF0E3C6E)),
                          child: Center(
                              child: Text(
                            "Apply Now",
                            style: GoogleFonts.lato(
                                color: Colors.white,
                                fontSize: 10.sp,
                                fontWeight: FontWeight.w700),
                          )),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 11.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 18.w, right: 18.w),
                    child: Divider(
                      thickness: 1,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 18.w,
                      ),
                      SizedBox(
                          height: 26.h,
                          width: 26.w,
                          child: Image.asset("images/badge.png")),
                      SizedBox(
                        width: 6.w,
                      ),
                      Text(
                        "More than 1000+ students have been placed",
                        style: GoogleFonts.lato(
                            color: Colors.grey,
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 60.w,
                      ),
                      SizedBox(
                        // height: 10.h,
                        // width: 14.w,
                        child: Icon(Icons.visibility, size: 14.w),
                      ),
                      SizedBox(
                        width: 11.w,
                      ),
                      Text(
                        "789",
                        style: GoogleFonts.lato(
                            color: Colors.grey,
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Padding(
            padding: EdgeInsets.only(top: 13.h, right: 9.w),
            child: Container(
              height: 36.h,
              width: 36.w,
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Icon(
                Icons.bookmark_border,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Positioned(
          child: Padding(
            padding: EdgeInsets.only(top: 13.h, left: 13.w),
            child: Container(
              height: 36.h,
              width: 36.w,
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: Icon(
                Icons.share,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}


/*Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network("https://www.gettyimages.in/gi-resources/images/500px/983794168.jpg",height: 116.h),
        ),
      ),
    );*/