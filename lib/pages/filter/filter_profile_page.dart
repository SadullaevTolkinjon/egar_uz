import 'package:flutter/material.dart';
import 'package:mobilecar/size_config/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FilterProfilePage extends StatefulWidget {
  var malumot;

  FilterProfilePage({Key? key, this.malumot}) : super(key: key);

  @override
  _FilterProfilePageState createState() => _FilterProfilePageState();
}

class _FilterProfilePageState extends State<FilterProfilePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  PageController? _pageController;
  bool _ischecked = false;
  bool _ischecked2 = false;
  bool _ischecked3 = false;
  bool _ischecked4 = false;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: getProportionScreenWidth(13),
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/fonts/saved.svg",
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(),
            child: Container(
              height: getProportionScreenHeight(179),
              width: getProportionScreenWidth(375),
              child: PageView(
                  controller: _pageController,
                  onPageChanged: (val) {
                    setState(() {
                      _tabController!.index = val;
                    });
                  },
                  children: [
                    Container(
                      height: getProportionScreenHeight(179),
                      width: getProportionScreenWidth(375),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            widget.malumot[0].toString(),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: getProportionScreenHeight(179),
                      width: getProportionScreenWidth(280),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            widget.malumot[0].toString(),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: getProportionScreenHeight(179),
                      width: getProportionScreenWidth(280),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            widget.malumot[0].toString(),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getProportionScreenWidth(151),
              right: getProportionScreenWidth(152),
            ),
            child: Container(
                height: getProportionScreenHeight(50),
                child: TabPageSelector(
                  color: Colors.grey,
                  selectedColor: Colors.amber,
                  controller: _tabController,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: getProportionScreenWidth(20)),
            child: Container(
              height: getProportionScreenHeight(21),
              width: getProportionScreenWidth(140),
              color: Colors.amber,
              child: Center(
                child: Text(
                  widget.malumot[3].toString(),
                  style: TextStyle(
                      fontSize: getProportionScreenHeight(13),
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: getProportionScreenHeight(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getProportionScreenWidth(20)),
                  child: Text(
                    widget.malumot[2].toString(),
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: getProportionScreenHeight(20),
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: getProportionScreenWidth(16)),
                  child: Text(
                    "\$${widget.malumot[1].toString()}",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: getProportionScreenHeight(20),
                        fontWeight: FontWeight.w700),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: getProportionScreenHeight(5)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getProportionScreenWidth(18),
                      right: getProportionScreenWidth(6)),
                  child: Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: getProportionScreenWidth(24)),
                  child: Text(
                    "5",
                    style: TextStyle(
                        color: Color(0XFFD9D9D9),
                        fontSize: getProportionScreenHeight(16),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Text(
                  "24 rewiews",
                  style: TextStyle(
                      color: Color(0XFFD9D9D9),
                      fontSize: getProportionScreenHeight(16),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(28)),
            child: Text(
              "Rent Duration",
              style: TextStyle(
                  fontSize: getProportionScreenHeight(16),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: getProportionScreenHeight(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: getProportionScreenWidth(20),
                      bottom: getProportionScreenHeight(3)),
                  child: Text("From"),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: getProportionScreenWidth(161),
                      bottom: getProportionScreenHeight(3)),
                  child: Text("To"),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getProportionScreenWidth(20)),
                  child: InkWell(
                    child: Container(
                        height: getProportionScreenHeight(45),
                        width: getProportionScreenWidth(157),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            border: Border.all(color: Colors.grey)),
                        child: Center(
                            child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: getProportionScreenWidth(10),
                                  right: getProportionScreenWidth(15)),
                              child: Icon(
                                Icons.date_range_outlined,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "03.02.2021",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ))),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: getProportionScreenWidth(20)),
                  child: InkWell(
                    child: Container(
                      height: getProportionScreenHeight(45),
                      width: getProportionScreenWidth(157),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          border: Border.all(color: Colors.grey)),
                      child: Center(
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: getProportionScreenWidth(10),
                                  right: getProportionScreenWidth(15)),
                              child: Icon(
                                Icons.date_range_outlined,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "03.02.2021",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(25)),
            child: Text(
              "Color",
              style: TextStyle(
                  fontSize: getProportionScreenHeight(16),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(15)),
            child: Text(
              "Black",
              style: TextStyle(
                  fontSize: getProportionScreenHeight(13),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(25)),
            child: Text(
              "Main Options",
              style: TextStyle(
                  fontSize: getProportionScreenHeight(16),
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getProportionScreenWidth(8)),
                  child: Checkbox(
                      activeColor: Colors.grey,
                      value: _ischecked,
                      onChanged: (v) {
                        setState(() {
                          _ischecked = !_ischecked;
                        });
                      }),
                ),
                Padding(
                  padding: EdgeInsets.only(),
                  child: Text(
                    "Bockup camera",
                    style: TextStyle(
                        fontSize: getProportionScreenHeight(14),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getProportionScreenWidth(30)),
                  child: Checkbox(
                      activeColor: Colors.grey,
                      value: _ischecked2,
                      onChanged: (v) {
                        setState(() {
                          _ischecked2 = !_ischecked2;
                        });
                      }),
                ),
                Padding(
                  padding: EdgeInsets.only(),
                  child: Text(
                    "Parking system",
                    style: TextStyle(
                        fontSize: getProportionScreenHeight(14),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getProportionScreenWidth(8)),
                  child: Checkbox(
                      activeColor: Colors.grey,
                      value: _ischecked3,
                      onChanged: (v) {
                        setState(() {
                          _ischecked3 = !_ischecked3;
                        });
                      }),
                ),
                Padding(
                  padding: EdgeInsets.only(),
                  child: Text(
                    "Cruise control",
                    style: TextStyle(
                        fontSize: getProportionScreenHeight(14),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getProportionScreenWidth(40)),
                  child: Checkbox(
                      activeColor: Colors.grey,
                      value: _ischecked4,
                      onChanged: (v) {
                        setState(() {
                          _ischecked4 = !_ischecked4;
                        });
                      }),
                ),
                Padding(
                  padding: EdgeInsets.only(),
                  child: Text(
                    "Sunroof",
                    style: TextStyle(
                        fontSize: getProportionScreenHeight(14),
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(27)),
            child: ElevatedButton(
              child: Text("Book Now"),
              style: ElevatedButton.styleFrom(
                  primary: Color(0XFF272727),
                  minimumSize: Size(getProportionScreenWidth(335),
                      getProportionScreenHeight(54))),
              onPressed: () {
                Navigator.pushNamed(context, "/confirm_booking", arguments: [
                  widget.malumot[0].toString(),
                  widget.malumot[1].toString(),
                  widget.malumot[3].toString(),
                  widget.malumot[2].toString()
                ]);
              },
            ),
          )
        ],
      ),
    );
  }
}
