import 'package:flutter/material.dart';
import 'package:mobilecar/database.dart';
import 'package:mobilecar/size_config/size_config.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:flutter_svg/flutter_svg.dart';

class First_Filter_Page extends StatefulWidget {
  const First_Filter_Page({Key? key}) : super(key: key);

  @override
  _First_Filter_PageState createState() => _First_Filter_PageState();
}

class _First_Filter_PageState extends State<First_Filter_Page> {
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {}
  DateTime _currentTime = DateTime.now();
  DateTime _first_Date = DateTime(2000);
  DateTime _lastDate = DateTime(2030);
  DateTime? vaqt;
  DateTime? vaqt2;
  List svgFile = [
    SvgPicture.asset("assets/fonts/coin.svg"),
    SvgPicture.asset("assets/fonts/corona.svg"),
    SvgPicture.asset("assets/fonts/olmos.svg"),
  ];
  List classnom = ["Economy", "Bussines", "Premium"];
  RangeValues _sliderValue = RangeValues(1.00, 1000.00);
  List km = [">200", "250-350", "400-500", "<500"];
  List<int> tapped = [];
  List<int> tapped2 = [];
  List<int> tapped3 = [];
  List<int> tapped4 = [];
  int son = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Filter",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: getProportionScreenWidth(19),
              top: getProportionScreenHeight(15),
            ),
            child: Text(
              "Data",
              style: TextStyle(
                  fontSize: getProportionScreenHeight(16),
                  fontWeight: FontWeight.w400),
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
                            child: vaqt == null
                                ? Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: getProportionScreenWidth(10),
                                            right:
                                                getProportionScreenWidth(15)),
                                        child: Icon(
                                          Icons.date_range_outlined,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        "Choose",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  )
                                : Padding(
                                    padding: EdgeInsets.only(
                                        left: getProportionScreenWidth(10)),
                                    child:
                                        Text(vaqt.toString().substring(0, 10)),
                                  )),
                      ),
                      onTap: () {
                        setState(() {
                          showDatePicker(
                                  context: context,
                                  initialDate: _currentTime,
                                  firstDate: _first_Date,
                                  lastDate: _lastDate)
                              .then((value) {
                            setState(() {
                              vaqt = value;
                            });
                          });
                        });
                      }),
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
                            child: vaqt2 == null
                                ? Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: getProportionScreenWidth(10),
                                            right:
                                                getProportionScreenWidth(15)),
                                        child: Icon(
                                          Icons.date_range_outlined,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        "Choose",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  )
                                : Padding(
                                    padding: EdgeInsets.only(
                                        left: getProportionScreenWidth(10)),
                                    child:
                                        Text(vaqt2.toString().substring(0, 10)),
                                  )),
                      ),
                      onTap: () {
                        setState(() {
                          showDatePicker(
                                  context: context,
                                  initialDate: _currentTime,
                                  firstDate: _first_Date,
                                  lastDate: _lastDate)
                              .then((value) {
                            setState(() {
                              vaqt2 = value;
                            });
                          });
                        });
                      }),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(20),
                bottom: getProportionScreenHeight(8)),
            child: Text(
              "Models",
              style: TextStyle(
                  fontSize: getProportionScreenHeight(18),
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                right: getProportionScreenWidth(20)),
            child: Container(
              height: getProportionScreenHeight(64),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    onDoubleTap: () {},
                    child: Container(
                      width: getProportionScreenWidth(68),
                      margin: const EdgeInsets.all(7.6),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(cars[index]["logo"].toString()),
                            fit: BoxFit.cover),
                        border: Border.all(
                            color: tapped.contains(index)
                                ? Colors.amber
                                : Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                    onTap: () {
                      if (tapped.contains(index)) {
                        setState(() {
                          tapped.remove(index);
                        });
                      } else {
                        setState(() {
                          tapped.add(index);
                        });
                      }
                    },
                  );
                },
                itemCount: cars.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(20),
                bottom: getProportionScreenHeight(8)),
            child: Text(
              "Class",
              style: TextStyle(
                  fontSize: getProportionScreenHeight(18),
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(10),
                right: getProportionScreenWidth(10)),
            child: Container(
              height: getProportionScreenHeight(74),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      width: getProportionScreenWidth(98),
                      margin: EdgeInsets.only(
                          left: getProportionScreenWidth(10),
                          right: getProportionScreenWidth(10)),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: tapped2.contains(index)
                                ? Colors.amber
                                : Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: getProportionScreenHeight(9)),
                              child: svgFile[index],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: getProportionScreenHeight(5)),
                              child: Text(classnom[index]),
                            )
                          ],
                        ),
                      ),
                    ),
                    onTap: () {
                      if (tapped2.contains(index)) {
                        setState(() {
                          tapped2.remove(index);
                        });
                      } else {
                        setState(() {
                          tapped2.add(index);
                        });
                      }
                    },
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: svgFile.length,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(20),
                bottom: getProportionScreenHeight(8)),
            child: Text(
              "Price\$",
              style: TextStyle(
                  fontSize: getProportionScreenHeight(18),
                  fontWeight: FontWeight.w400),
            ),
          ),
          RangeSlider(
              values: _sliderValue,
              activeColor: Colors.amber,
              inactiveColor: Colors.grey,
              min: 1.00,
              max: 1000.00,
              labels: RangeLabels("${_sliderValue.start.toStringAsFixed(2)}\$",
                  "${_sliderValue.end.toStringAsFixed(2)}\$"),
              divisions: 1000,
              onChanged: (v) {
                setState(() {
                  _sliderValue = v;
                });
              }),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(10),
                bottom: getProportionScreenHeight(8)),
            child: Text(
              "Km",
              style: TextStyle(
                  fontSize: getProportionScreenHeight(18),
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(10),
                right: getProportionScreenWidth(5)),
            child: Container(
              height: getProportionScreenHeight(64),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      child: Center(
                        child: Text(km[index]),
                      ),
                      width: getProportionScreenWidth(68),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: tapped3.contains(index)
                                ? Colors.amber
                                : Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(12.0),
                        ),
                      ),
                    ),
                    onTap: () {
                      if (tapped3.contains(index)) {
                        setState(() {
                          tapped3.remove(index);
                        });
                      } else {
                        setState(() {
                          tapped3.add(index);
                        });
                      }
                    },
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: km.length,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(10),
                bottom: getProportionScreenHeight(8)),
            child: Text(
              "Body type",
              style: TextStyle(
                  fontSize: getProportionScreenHeight(18),
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                right: getProportionScreenWidth(20)),
            child: Container(
              height: getProportionScreenHeight(64),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      width: getProportionScreenWidth(68),
                      margin: const EdgeInsets.all(7.6),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: tapped4.contains(index)
                                ? Colors.amber
                                : Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                    onTap: () {
                      if (tapped4.contains(index)) {
                        setState(() {
                          tapped4.remove(index);
                        });
                      } else {
                        setState(() {
                          tapped4.add(index);
                        });
                      }
                    },
                  );
                },
                itemCount: 4,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(27)),
            child: ElevatedButton(
              child: Text("Apply filter"),
              style: ElevatedButton.styleFrom(
                  primary: Color(0XFF272727),
                  minimumSize: Size(getProportionScreenWidth(335),
                      getProportionScreenHeight(54))),
              onPressed: () {
                son = tapped[0];
                Navigator.pushNamed(context, "/second_page_filter",
                    arguments: cars[son]);
              },
            ),
          )
        ],
      ),
    );
  }

  raqam() {}
}
