import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  List<String> student = [
    "images/stu1.png",
    "images/stu2.png",
    "images/stu3.png",
    "images/stu4.png",
    "images/stu1.png",
    "images/stu2.png",
  ];

  List<String> cartt = [
    "images/cart1.png",
    "images/cart2.png",
    "images/cart3.png",
    "images/cart1.png",
  ];
  var val = "College";
  int indexx = 2;
  final PageController _controller = PageController();
  late ScrollController _scrollController;
  var top = 0.0;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              elevation: 4,
              expandedHeight: 416.h,
              pinned: true,
              flexibleSpace: LayoutBuilder(
                builder: (context, constraints) {
                  top = constraints.biggest.height;
                  return Container(
                    decoration: BoxDecoration(color: Color(0xFF0E3C6E)),
                    child: FlexibleSpaceBar(
                        collapseMode: CollapseMode.parallax,
                        centerTitle: true,
                        title: AnimatedOpacity(
                          duration: const Duration(milliseconds: 300),
                          opacity: top <= 110.0 ? 1.0 : 0,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 19.w,
                              ),
                              Flexible(
                                child: Text('GHJK Engineering College',
                                    style: GoogleFonts.lato(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                        background: Container(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 83.h,
                                width: double.infinity.w,
                                color: Color(0xFF0E3C6E),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 28.w),
                                  child: Row(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: 42.h,
                                          width: 42.w,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle),
                                          child: Icon(
                                            Icons.arrow_back_ios_new,
                                            color: Color(0xFF0E3C6E),
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      Padding(
                                        padding: EdgeInsets.only(right: 28.w),
                                        child: Container(
                                          height: 42.h,
                                          width: 42.w,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle),
                                          child: Icon(
                                            Icons.bookmark_border,
                                            color: Colors.black,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Image(
                                height: 188.h,
                                width: double.infinity.w,
                                image: AssetImage("images/col4.png"),
                                fit: BoxFit.fill,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 19.w, top: 16.h),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "GHJK Engineering College",
                                          style: GoogleFonts.lato(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          height: 16.h,
                                        ),
                                        Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing \nelit. Felis consectetur nulla pharetra praesent hendrerit \nvulputate viverra. Pellentesque aliquam tempus \nfaucibus est.",
                                          style: GoogleFonts.lato(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xFF8E8E8E)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Container(
                                    height: 74.h,
                                    width: 52.w,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6.w))),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "3.5",
                                          style: GoogleFonts.lato(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 18.sp),
                                        ),
                                        Icon(
                                          IconData(0xe5f9,
                                              fontFamily: 'MaterialIcons'),
                                          color: Colors.white,
                                          size: 23.w,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )),
                  );
                },
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    elevation: 5,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          border: Border(top: BorderSide(color: Colors.grey))),
                      height: 46.h,
                      width: double.infinity.w,
                      child: Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 31.w,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                val = "College";
                              });
                            },
                            child: Container(
                              width: 77.w,
                              height: double.infinity.h,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: val == "College"
                                          ? BorderSide(
                                              color: Color(0xFF0E3C6E),
                                              width: 3)
                                          : BorderSide(
                                              color: Colors.transparent))),
                              child: Center(
                                  child: Text(
                                "College",
                                style: GoogleFonts.lato(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 37.w,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                val = "Hostel";
                              });
                            },
                            child: Container(
                              width: 77.w,
                              height: double.infinity.h,
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: val == "Hostel"
                                          ? BorderSide(
                                              color: Color(0xFF0E3C6E),
                                              width: 3)
                                          : BorderSide(
                                              color: Colors.transparent))),
                              child: Center(
                                  child: Text(
                                "Hostel",
                                style: GoogleFonts.lato(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold),
                              )),
                            ),
                          ),
                          SizedBox(
                            width: 23.w,
                          ),
                          Container(
                            width: 77.w,
                            height: double.infinity.h,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.transparent, width: 3))),
                            child: Center(
                                child: Text(
                              "Q & A",
                              style: GoogleFonts.lato(
                                  fontSize: 12.sp, fontWeight: FontWeight.bold),
                            )),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Container(
                            width: 77.w,
                            height: double.infinity.h,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: Colors.transparent, width: 3))),
                            child: Center(
                                child: Text(
                              "Events",
                              style: GoogleFonts.lato(
                                  fontSize: 12.sp, fontWeight: FontWeight.bold),
                            )),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (val == "College")
                    Padding(
                      padding: EdgeInsets.only(left: 31.w, right: 32.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30.h,
                          ),
                          Text(
                            "Description",
                            style: GoogleFonts.lato(
                                fontSize: 16.sp, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vitae pharetra eros. Vivamus ut nisi vitae mi egestas blandit. Nulla venenatis nec metus at cursus. Aenean molestie blandit justo, quis maximus nibh consequat a. Integer quis metus eget tortor iaculis porttitor. Aenean fringilla iaculis condimentum. Sed a finibus nunc, sed ullamcorper eros. Praesent commodo arcu in leo feugiat consectetur. Aliquam rutrum risus ut nulla consequat, id efficitur neque posuere. Nullam ornare lectus at interdum rutrum.",
                              style: GoogleFonts.lato(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF969797),
                              ),
                              textAlign: TextAlign.justify),
                          SizedBox(
                            height: 34.h,
                          ),
                          Text(
                            "Location",
                            style: GoogleFonts.lato(
                                fontSize: 16.sp, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.w)),
                              child: Image.asset(
                                "images/map.jpg",
                                fit: BoxFit.cover,
                                height: 184.h,
                                width: 365.w,
                              )),
                          SizedBox(
                            height: 33.h,
                          ),
                          Text(
                            "Student Review",
                            style: GoogleFonts.lato(
                                fontSize: 16.sp, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                ...List.generate(
                                  6,
                                  (index) => Padding(
                                    padding: EdgeInsets.only(right: 18.w),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.w)),
                                      child: Image.asset(
                                        student[index],
                                        fit: BoxFit.cover,
                                        height: 50.h,
                                        width: 50.w,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 21.h,
                          ),
                          SizedBox(
                            height: 120.h,
                            width: 368.w,
                            child: Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.w))),
                              child: Padding(
                                padding: EdgeInsets.only(left: 15.w),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Arun Sai",
                                      style: GoogleFonts.lato(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.sp),
                                    ),
                                    SizedBox(
                                        height: 56.h,
                                        width: 298.w,
                                        child: Text(
                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
                                          style: GoogleFonts.lato(
                                            color: Color(0xFF8E8E8E),
                                            fontSize: 12.sp,
                                          ),
                                        )),
                                    Text(
                                      "⭐ ⭐ ⭐ ⭐ ⭐",
                                      style: TextStyle(fontSize: 14.sp),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 17.h,
                          ),
                          Container(
                              width: 366.w,
                              height: 56.h,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Apply now",
                                  style: GoogleFonts.lato(
                                      color: Colors.white,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF0E3C6E)),
                              )),
                        ],
                      ),
                    ),
                  val == "Hostel"
                      ? Padding(
                          padding: EdgeInsets.only(
                              left: 32.w, right: 31.w, top: 30.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 31.h,
                                    width: 69.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6.w)),
                                        border: Border.all(
                                            color: Color(0xFF0E3C6E)),
                                        color: Color(0xFF0E3C6E)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset(
                                          "images/bed.png",
                                          height: 20.h,
                                          width: 20.h,
                                        ),
                                        Text("4",
                                            style:
                                                TextStyle(color: Colors.white))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Container(
                                    height: 31.h,
                                    width: 69.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(6.w)),
                                      border:
                                          Border.all(color: Color(0xFF0E3C6E)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset(
                                          "images/bed.png",
                                          height: 20.h,
                                          width: 20.h,
                                        ),
                                        Text("3",
                                            style:
                                                TextStyle(color: Colors.black))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Container(
                                    height: 31.h,
                                    width: 69.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(6.w)),
                                      border:
                                          Border.all(color: Color(0xFF0E3C6E)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset(
                                          "images/bed.png",
                                          height: 20.h,
                                          width: 20.h,
                                        ),
                                        Text("2",
                                            style:
                                                TextStyle(color: Colors.black))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.w,
                                  ),
                                  Container(
                                    height: 31.h,
                                    width: 69.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(6.w)),
                                      border:
                                          Border.all(color: Color(0xFF0E3C6E)),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Image.asset(
                                          "images/bed.png",
                                          height: 20.h,
                                          width: 20.h,
                                        ),
                                        Text(
                                          "1",
                                          style: TextStyle(color: Colors.black),
                                        )
                                      ],
                                    ),
                                  ),
                                  //SizedBox(width: 10.w,),
                                ],
                              ),
                              SizedBox(
                                height: 29.h,
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ...List.generate(
                                      4,
                                      (index) => Padding(
                                        padding: EdgeInsets.only(right: 10.w),
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.w)),
                                            child: Image.asset(
                                              cartt[index],
                                              fit: BoxFit.cover,
                                              height: 137.h,
                                              width: 154.w,
                                            )),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 29.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  ...List.generate(
                                    7,
                                    (index) => Padding(
                                      padding: EdgeInsets.only(right: 5.w),
                                      child: Container(
                                        height: 8.h,
                                        width: 8.w,
                                        decoration: BoxDecoration(
                                            color: index == indexx
                                                ? Color(0XFF0E3C6E)
                                                : Colors.grey,
                                            shape: BoxShape.circle),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 24.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "GHJK Engineering College",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16.sp),
                                  ),
                                  Container(
                                    height: 22.h,
                                    width: 52.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6.w)),
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
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 11.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "images/loc.png",
                                    height: 18.h,
                                    width: 18.h,
                                  ),
                                  SizedBox(
                                    width: 8.w,
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12.sp),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 13.h,
                              ),
                              Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14.sp,
                                    color: Color(0xFF969797)),
                              ),
                              SizedBox(
                                height: 35.h,
                              ),
                              Text(
                                "Facilities",
                                style: GoogleFonts.lato(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16.sp),
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "images/univ.png",
                                    height: 26.h,
                                    width: 26.w,
                                  ),
                                  SizedBox(
                                    width: 8.h,
                                  ),
                                  Text(
                                    "College in 400mtrs",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.sp),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "images/bath.png",
                                    height: 26.h,
                                    width: 26.w,
                                  ),
                                  SizedBox(
                                    width: 8.h,
                                  ),
                                  Text(
                                    "Bathrooms : 2",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14.sp),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 97.h,
                              ),
                              Container(
                                  width: 366.w,
                                  height: 56.h,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Apply now",
                                      style: GoogleFonts.lato(
                                          color: Colors.white,
                                          fontSize: 20.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xFF0E3C6E)),
                                  )),
                              SizedBox(
                                height: 34.h,
                              )
                            ],
                          ),
                        )
                      : Text("")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
