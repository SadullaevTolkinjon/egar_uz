import 'package:flutter/material.dart';
import 'package:mobilecar/size_config/size_config.dart';

class MyCardPage extends StatefulWidget {
  const MyCardPage({Key? key}) : super(key: key);

  @override
  _MyCardPageState createState() => _MyCardPageState();
}

class _MyCardPageState extends State<MyCardPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text(
          "My Card",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                right: getProportionScreenWidth(20)),
            child: Container(
              height: getProportionScreenHeight(180),
              width: getProportionScreenWidth(336),
              decoration: BoxDecoration(
                color: Color(0XFFFFCC00),
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(top: getProportionScreenHeight(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: getProportionScreenWidth(29)),
                          child: Text(
                            "Uzcard",
                            style: TextStyle(
                                fontSize: getProportionScreenHeight(14),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              right: getProportionScreenWidth(20)),
                          child: PopupMenuButton(
                            child: Icon(Icons.more_vert),
                            itemBuilder: (context) {
                              return [
                                PopupMenuItem(
                                  child: Text("Delete card"),
                                  value: "delete_card",
                                ),
                                PopupMenuItem(
                                  child: Text("Change Card"),
                                  value: "change_card",
                                )
                              ];
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: getProportionScreenWidth(12),
                        top: getProportionScreenHeight(35)),
                    child: Container(
                      height: getProportionScreenHeight(21),
                      width: getProportionScreenWidth(176),
                      child: Center(
                        child: Text("8600 1122 3322 6666"),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: getProportionScreenHeight(24)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: getProportionScreenWidth(29)),
                          child: Text("John Doe"),
                        ),
                        Padding(
                            padding: EdgeInsets.only(
                                right: getProportionScreenWidth(22)),
                            child: Text("06/15"))
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
