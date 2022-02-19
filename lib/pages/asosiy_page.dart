import 'package:flutter/material.dart';
import 'package:mobilecar/size_config/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobilecar/database.dart';

class AsosiyPage extends StatefulWidget {
  const AsosiyPage({Key? key}) : super(key: key);

  @override
  _AsosiyPageState createState() => _AsosiyPageState();
}

class _AsosiyPageState extends State<AsosiyPage> {
  var _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
          expandedHeight: getProportionScreenHeight(150),
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: getProportionScreenHeight(70),
                    left: getProportionScreenWidth(20),
                  ),
                  child: Text(
                    "Select your car",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: getProportionScreenHeight(20)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: getProportionScreenHeight(15),
                          left: getProportionScreenWidth(20)),
                      child: Container(
                        height: getProportionScreenHeight(45),
                        width: getProportionScreenWidth(271),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Center(
                          child: TextFormField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0XFFD9D9D9)),
                              prefixIcon: Icon(
                                Icons.search,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          right: getProportionScreenWidth(20),
                          top: getProportionScreenHeight(15)),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/filter_first_page");
                        },
                        child: SvgPicture.asset(
                          "assets/fonts/filter.svg",
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            minimumSize: Size(getProportionScreenWidth(45),
                                getProportionScreenHeight(45)),
                            elevation: 0,
                            side: BorderSide(color: Colors.grey)),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(
              left: getProportionScreenWidth(20),
              top: getProportionScreenHeight(10)),
          sliver: SliverToBoxAdapter(
            child: Text(
              "Car Brends",
              style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: getProportionScreenHeight(18),
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(
              left: getProportionScreenWidth(10),
              right: getProportionScreenWidth(10)),
          sliver: SliverToBoxAdapter(
            child: Container(
              height: getProportionScreenHeight(100),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      height: getProportionScreenHeight(64),
                      width: getProportionScreenWidth(64),
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(cars[index]["logo"].toString()),
                            fit: BoxFit.cover),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/carbrend",
                          arguments: cars[index]);
                    },
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: cars.length,
                itemExtent: getProportionScreenHeight(95),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
                top: getProportionScreenHeight(26),
                left: getProportionScreenWidth(20),
                right: getProportionScreenWidth(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hot Offers",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: getProportionScreenHeight(18),
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                    color: Color(0XFFBABABA),
                    fontSize: getProportionScreenHeight(12),
                  ),
                )
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(
              top: getProportionScreenHeight(8),
              left: getProportionScreenWidth(10),
              right: getProportionScreenWidth(10)),
          sliver: SliverToBoxAdapter(
            child: Container(
              height: getProportionScreenHeight(140),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                       image: DecorationImage(image: NetworkImage(hotOffer[index].toString()),fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                    onTap: () {},
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: hotOffer.length,
                itemExtent: getProportionScreenHeight(200),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
                top: getProportionScreenHeight(26),
                left: getProportionScreenWidth(20),
                right: getProportionScreenWidth(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Convenient Offers",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: getProportionScreenHeight(18),
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                    color: Color(0XFFBABABA),
                    fontSize: getProportionScreenHeight(12),
                  ),
                )
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(
              top: getProportionScreenHeight(8),
              left: getProportionScreenWidth(10),
              right: getProportionScreenWidth(10)),
          sliver: SliverToBoxAdapter(
            child: Container(
              height: getProportionScreenHeight(140),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                        image: DecorationImage(image: NetworkImage(convenent[index].toString()),fit: BoxFit.cover),
                       borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                    onTap: () {},
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: convenent.length,
                itemExtent: getProportionScreenHeight(200),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(
                top: getProportionScreenHeight(26),
                left: getProportionScreenWidth(20),
                right: getProportionScreenWidth(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Last Added",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: getProportionScreenHeight(18),
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                    color: Color(0XFFBABABA),
                    fontSize: getProportionScreenHeight(12),
                  ),
                )
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.only(
              top: getProportionScreenHeight(8),
              left: getProportionScreenWidth(10),
              right: getProportionScreenWidth(10)),
          sliver: SliverToBoxAdapter(
            child: Container(
              height: getProportionScreenHeight(140),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    child: Container(
                      margin: const EdgeInsets.all(6.0),
                      decoration: BoxDecoration(border: Border.all(color: Colors.grey),
                        image: DecorationImage(image: NetworkImage(lastAdd[index].toString()),fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                    ),
                    onTap: () {},
                  );
                },
                scrollDirection: Axis.horizontal,
                itemCount: lastAdd.length,
                itemExtent: getProportionScreenHeight(200),
              ),
            ),
          ),
        )
      ],
    );
  }
}
