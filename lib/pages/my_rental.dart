import 'package:flutter/material.dart';
import 'package:mobilecar/database.dart';
import 'package:mobilecar/size_config/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyRentalPage extends StatefulWidget {
  const MyRentalPage({Key? key}) : super(key: key);

  @override
  _MyRentalPageState createState() => _MyRentalPageState();
}

class _MyRentalPageState extends State<MyRentalPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            centerTitle: true,
            title: Text(
              "My Rental",
              style: TextStyle(color: Colors.black),
            ),
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  height: getProportionScreenHeight(349),
                  margin: EdgeInsets.only(
                    left: getProportionScreenWidth(20),
                    right: getProportionScreenWidth(20),
                    top: getProportionScreenHeight(20),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: getProportionScreenHeight(1),
                            left: getProportionScreenWidth(20)),
                        child: Text(
                          myRental[index].nom.toString(),
                          style: TextStyle(
                              fontSize: getProportionScreenHeight(14),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: getProportionScreenWidth(20),
                              right: getProportionScreenWidth(20)),
                          child: Container(
                            height: getProportionScreenHeight(180),
                            width: getProportionScreenWidth(300),
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        myRental[index].rasm.toString()))),
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 7,
                          child: Column(
                            children: [
                              ListTile(
                                leading: SvgPicture.asset(
                                  "assets/fonts/calendar.svg",
                                ),
                                title: Text(
                                  "Data",
                                  style: TextStyle(
                                      fontSize: getProportionScreenHeight(14),
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal),
                                ),
                                trailing: Text("23 dec 2021"),
                              ),
                              Divider(
                                height: 0,
                                thickness: 2.2,
                                indent: 10,
                                endIndent: 10,
                              ),
                              ListTile(
                                leading: SvgPicture.asset(
                                  "assets/fonts/duration.svg",
                                ),
                                title: Text(
                                  "Duration",
                                  style: TextStyle(
                                      fontSize: getProportionScreenHeight(14),
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal),
                                ),
                                trailing: Text("03 hour"),
                              ),
                              Divider(
                                height: 0,
                                thickness: 2.2,
                                indent: 10,
                                endIndent: 10,
                              ),
                              ListTile(
                                leading: SvgPicture.asset(
                                  "assets/fonts/compass.svg",
                                ),
                                title: Text(
                                  "Range",
                                  style: TextStyle(
                                      fontSize: getProportionScreenHeight(14),
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal),
                                ),
                                trailing: Text("60km"),
                              ),
                              Divider(
                                height: 0,
                                thickness: 2.2,
                                indent: 10,
                                endIndent: 10,
                              ),
                              ListTile(
                                leading: SvgPicture.asset(
                                  "assets/fonts/loss.svg",
                                ),
                                title: Text(
                                  "Cost",
                                  style: TextStyle(
                                      fontSize: getProportionScreenHeight(14),
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal),
                                ),
                                trailing: Text("\$ ${myRental[index].narx}"),
                              ),
                              Divider(
                                height: 0,
                                thickness: 2.2,
                                indent: 10,
                                endIndent: 10,
                              ),
                            ],
                          ))
                    ],
                  ),
                );
              }, childCount: myRental.length),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
              ))
        ],
      ),
    );
  }
}
