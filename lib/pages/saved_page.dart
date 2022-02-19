import 'package:flutter/material.dart';
import 'package:mobilecar/database.dart';
import 'package:mobilecar/size_config/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SavedPage extends StatefulWidget {
  const SavedPage({Key? key}) : super(key: key);

  @override
  _SavedPageState createState() => _SavedPageState();
}

class _SavedPageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: true,
            elevation: 0,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            title: Text(
              "Saved",
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
              delegate: SliverChildBuilderDelegate((context, index) {
                return InkWell(
                  child: Dismissible(
                    key: UniqueKey(),
                    onDismissed: (val) {
                      setState(() {
                        saved.removeAt(index);
                      });
                    },
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
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    getProportionScreenHeight(3),
                                  ),
                                ),
                                color: Colors.amber,
                              ),
                              height: getProportionScreenHeight(16),
                              width: getProportionScreenWidth(69),
                              child: Center(
                                child: Text(
                                  saved[index].vaqt.toString(),
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
                              saved[index].nom.toString(),
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
                                      image: NetworkImage(
                                          saved[index].rasm.toString()))),
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
                                    "\$${saved[index].narx.toString()}",
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
                                        side: BorderSide(color: Colors.grey),
                                        minimumSize: Size(
                                            getProportionScreenWidth(25),
                                            getProportionScreenHeight(25))),
                                    child: SvgPicture.asset(
                                      "assets/fonts/saved.svg",
                                    ),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/filter_profile_page",
                        arguments: [
                          saved[index].rasm,
                          saved[index].narx,
                          saved[index].nom,
                          saved[index].vaqt
                        ]);
                  },
                );
              }, childCount: saved.length),
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
