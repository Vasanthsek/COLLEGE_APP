import 'package:college_app/page2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Page1 extends StatelessWidget {
  Page1({super.key});
  List<String> degreeName = [
    "Bachelor of Technology",
    "Bachelor of Architecture",
    "Pharmacy",
    "Law",
    "Management",
  ];
  List<String> degreeIcon = [
    "images/bac.png",
    "images/arc.png",
    "images/pha.png",
    "images/law.png",
    "images/man.png"
  ];

  int yes = 0;

  sheet(BuildContext context) {
    return showModalBottomSheet<void>(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30.0.w),
        ),
      ),
      context: context,
      builder: (context) {
        return SizedBox(
          height: 396.h,
          width: double.infinity.w,
          child: Padding(
            padding: EdgeInsets.only(top: 28.h, left: 38.w, right: 47.0.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Sort by",
                      style: GoogleFonts.lato(
                          fontSize: 18.sp, fontWeight: FontWeight.w800),
                    ),
                    Icon(
                      Icons.close,
                      size: 16,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                const Divider(
                  thickness: 1,
                ),
                SizedBox(
                  height: 44.h,
                ),
                ...List.generate(
                  5,
                  (index) => Padding(
                    padding: EdgeInsets.only(bottom: 20.h),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Page2(),
                            )).then((value) => Navigator.pop(context));
                      },
                      child: Row(
                        children: [
                          SizedBox(
                              height: 22.h,
                              width: 22.w,
                              child: Image.asset(degreeIcon[index])),
                          Padding(
                            padding: EdgeInsets.only(left: 15.w),
                            child: Text(
                              degreeName[index],
                              style: GoogleFonts.lato(
                                  fontWeight: FontWeight.w600, fontSize: 18.sp),
                            ),
                          ),
                          Spacer(),
                          Container(
                              width: 21.w,
                              height: 21.h,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: Color(0xFF0E3C6E))),
                              child: Center(
                                  child: Container(
                                      width: 8.w,
                                      height: 8.h,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: yes == index
                                              ? Color(0xFF0E3C6E)
                                              : Colors.transparent))))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: 225.h,
                width: double.infinity.w,
                decoration: BoxDecoration(
                    color: Color(0xFF0E3C6E),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.w),
                        bottomRight: Radius.circular(30.w))),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(37.w, 145.h, 0, 27.h),
                child: Row(
                  children: [
                    Container(
                      height: 53.h,
                      width: 279.w,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.w))),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(15.w))),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 275.h, left: 37.w),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            sheet(context);
                          },
                          child: SizedBox(
                              height: 158.h,
                              width: 354.w,
                              child: Image.asset("images/Picture1.jpg")),
                        ),
                        Positioned(
                            left: 40.w,
                            top: 15.h,
                            child: Text(
                              "Top Colleges",
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20.sp),
                            )),
                        Positioned(
                          left: 40.w,
                          top: 50.h,
                          child: SizedBox(
                              height: 81.h,
                              width: 202.w,
                              child: Text(
                                "Search through thousands of accredited colleges and universities online to find the right one for you. Apply in 3 min, and connect with your future.",
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 11.sp),
                              )),
                        ),
                        Positioned(
                          bottom: 0,
                          top: 135.h,
                          right: 0,
                          left: 272.w,
                          child: SizedBox(
                              height: 81.h,
                              width: 202.w,
                              child: Text(
                                "+126 Colleges",
                                style: GoogleFonts.lato(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 11.sp),
                              )),
                        ),
                      ],
                    ),
                    // cc(context),
                    SizedBox(
                      height: 20.h,
                    ),
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            sheet(context);
                          },
                          child: SizedBox(
                              height: 158.h,
                              width: 354.w,
                              child: Image.asset("images/Picture2.jpg")),
                        ),
                        Positioned(
                            left: 40.w,
                            top: 15.h,
                            child: Text(
                              "Top Schools",
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20.sp),
                            )),
                        Positioned(
                          left: 40.w,
                          top: 50.h,
                          child: SizedBox(
                              height: 81.h,
                              width: 202.w,
                              child: Text(
                                "Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.",
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 11.sp),
                              )),
                        ),
                        Positioned(
                          bottom: 0,
                          top: 135.h,
                          right: 0,
                          left: 272.w,
                          child: SizedBox(
                              height: 81.h,
                              width: 202.w,
                              child: Text(
                                "+106 Schools",
                                style: GoogleFonts.lato(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 11.sp),
                              )),
                        ),
                      ],
                    ),
                    //  cc(context),
                    SizedBox(
                      height: 20.h,
                    ),
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {
                            sheet(context);
                          },
                          child: SizedBox(
                              height: 158.h,
                              width: 354.w,
                              child: Image.asset("images/Picture3.png")),
                        ),
                        Positioned(
                            left: 40.w,
                            top: 15.h,
                            child: Text(
                              "Exams",
                              style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20.sp),
                            )),
                        Positioned(
                          left: 40.w,
                          top: 50.h,
                          child: SizedBox(
                              height: 81.h,
                              width: 202.w,
                              child: Text(
                                "Find an end to end information about the exams that are happening in India",
                                style: GoogleFonts.lato(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 11.sp),
                              )),
                        ),
                        Positioned(
                          bottom: 0,
                          top: 135.h,
                          right: 0,
                          left: 272.w,
                          child: SizedBox(
                              height: 81.h,
                              width: 202.w,
                              child: Text(
                                "+16 Exams",
                                style: GoogleFonts.lato(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 11.sp),
                              )),
                        ),
                      ],
                    ),
                    //   cc(context),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.w, 42.h, 37.w, 0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                      height: 20.h,
                      width: 16.w,
                      child: Stack(
                        children: [
                          Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10.w),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                height: 12.h,
                                width: 12.w,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFFD0000)),
                              ),
                            ),
                          )
                        ],
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(37.w, 49.h, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Find your own way",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(
                      "Search in 600 colleges around!",
                      style: GoogleFonts.lato(
                          color: Colors.white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
