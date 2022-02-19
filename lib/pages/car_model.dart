import 'package:flutter/material.dart';
import 'package:mobilecar/class_data_base.dart';
import 'package:mobilecar/database.dart';
import 'package:mobilecar/size_config/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CarBrends extends StatefulWidget {
  var data;
  CarBrends({Key? key, this.data}) : super(key: key);

  @override
  _CarBrendsState createState() => _CarBrendsState();
}

class _CarBrendsState extends State<CarBrends> {
  List tapped = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            title: Text(
              widget.data["nom"].toString(),
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(
                  right: getProportionScreenWidth(13),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
              ),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
              top: 10.0,
            ),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            getProportionScreenHeight(8),
                          ),
                        ),
                      ),
                      margin: EdgeInsets.all(getProportionScreenWidth(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                left: getProportionScreenWidth(17),
                                top: getProportionScreenHeight(13)),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    getProportionScreenHeight(3),
                                  ),
                                ),
                              ),
                              height: getProportionScreenHeight(16),
                              width: getProportionScreenWidth(69),
                              child: Center(
                                child: Text(
                                  widget.data["seriya"][index].toString(),
                                  style: TextStyle(
                                      fontSize: getProportionScreenHeight(8),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: getProportionScreenWidth(17),
                                top: getProportionScreenHeight(5)),
                            child: Text(
                              widget.data["seriya"][index].toString(),
                              style: TextStyle(
                                  fontSize: getProportionScreenHeight(16),
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: getProportionScreenWidth(7),
                                top: getProportionScreenHeight(9),
                                right: getProportionScreenWidth(7)),
                            child: Container(
                              height: getProportionScreenHeight(105),
                              width: getProportionScreenWidth(150),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(widget.data!["rasm"]
                                            [index]
                                        .toString())),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: getProportionScreenWidth(17),
                                      top: getProportionScreenHeight(14)),
                                  child: Text(
                                    "\$70/day",
                                    style: TextStyle(
                                        fontSize: getProportionScreenHeight(16),
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      right: getProportionScreenWidth(13),
                                      top: getProportionScreenHeight(8)),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.white,
                                        elevation: 0,
                                        side: BorderSide(
                                          color: tapped.contains(index)
                                              ? Colors.amber
                                              : Colors.grey,
                                        ),
                                        minimumSize: Size(
                                            getProportionScreenWidth(25),
                                            getProportionScreenHeight(25))),
                                    child: SvgPicture.asset(
                                      "assets/fonts/saved.svg",
                                      color: tapped.contains(index)
                                          ? Colors.amber
                                          : Colors.grey,
                                    ),
                                    onPressed: () {
                                      saved.add(Jonat(
                                          rasm: widget.data["rasm"][index],
                                          nom: widget.data["seriya"][index],
                                          narx: widget.data["narx"][index],
                                          vaqt: widget.data["nom"]));

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
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        "/filter_profile_page",
                        arguments: [
                          widget.data["rasm"][index],
                          widget.data["narx"][index],
                          widget.data["seriya"][index],
                          widget.data["nom"]
                        ],
                      );
                    },
                  );
                },
                childCount: widget.data!["seriya"]!.length,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: getProportionScreenHeight(248),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
