import 'package:flutter/material.dart';
import 'package:mobilecar/size_config/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePAge extends StatefulWidget {
  const ProfilePAge({Key? key}) : super(key: key);

  @override
  _ProfilePAgeState createState() => _ProfilePAgeState();
}

class _ProfilePAgeState extends State<ProfilePAge> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: getProportionScreenHeight(45),
                left: getProportionScreenWidth(20),
                right: getProportionScreenWidth(20)),
            child: Container(
              height: getProportionScreenHeight(43),
              width: getProportionScreenWidth(335),
              child: Center(
                child: Text(
                  "Profile",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionScreenHeight(20),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: getProportionScreenHeight(28)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getProportionScreenWidth(20)),
                  child: Container(
                    height: getProportionScreenHeight(65),
                    width: getProportionScreenWidth(73),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          getProportionScreenHeight(8),
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          child: CircleAvatar(
                            radius: 8,
                            child: Icon(
                              Icons.add,
                              size: 12,
                              color: Colors.black,
                            ),
                            backgroundColor: Colors.amber,
                          ),
                          right: 0,
                          bottom: 0,
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: getProportionScreenWidth(22)),
                      child: Container(
                        child: Text(
                          "Sadullaev To'lqinjon",
                          style: TextStyle(
                              fontSize: getProportionScreenHeight(16),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal),
                        ),
                        height: getProportionScreenHeight(40),
                        width: getProportionScreenWidth(136),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(left: getProportionScreenWidth(22)),
                      child: Container(
                        child: Text(
                          "id:123456",
                          style: TextStyle(
                              fontSize: getProportionScreenHeight(14),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                              color: Color(0XFFD9D9D9)),
                        ),
                        height: getProportionScreenHeight(17),
                        width: getProportionScreenWidth(63),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                right: getProportionScreenWidth(19),
                top: getProportionScreenHeight(45)),
            child: ListTile(
              leading: SvgPicture.asset(
                "assets/fonts/Group.svg",
              ),
              title: Text(
                "Payment Methods",
                style: TextStyle(
                    fontSize: getProportionScreenHeight(16),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.pushNamed(context, "/paymnet_methods");
              },
            ),
          ),
          Divider(
            thickness: 1.0,
            color: Colors.black,
            height: 1,
            indent: getProportionScreenWidth(44),
            endIndent: getProportionScreenWidth(40),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                right: getProportionScreenWidth(19),
                top: getProportionScreenHeight(29)),
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, "/message");
              },
              leading: SvgPicture.asset(
                "assets/fonts/sms.svg",
              ),
              title: Text(
                "Messages",
                style: TextStyle(
                    fontSize: getProportionScreenHeight(16),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Divider(
            thickness: 1.0,
            color: Colors.black,
            height: 1,
            indent: getProportionScreenWidth(44),
            endIndent: getProportionScreenWidth(40),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                right: getProportionScreenWidth(19),
                top: getProportionScreenHeight(29)),
            child: ListTile(
              leading: SvgPicture.asset(
                "assets/fonts/acc.svg",
              ),
              title: Text(
                "Account Details",
                style: TextStyle(
                    fontSize: getProportionScreenHeight(16),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Divider(
            thickness: 1.0,
            color: Colors.black,
            height: 1,
            indent: getProportionScreenWidth(44),
            endIndent: getProportionScreenWidth(40),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                right: getProportionScreenWidth(19),
                top: getProportionScreenHeight(29)),
            child: ListTile(
              leading: SvgPicture.asset(
                "assets/fonts/logout.svg",
              ),
              title: Text(
                "Log out",
                style: TextStyle(
                    fontSize: getProportionScreenHeight(16),
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Divider(
            thickness: 1.0,
            color: Colors.black,
            height: 1,
            indent: getProportionScreenWidth(44),
            endIndent: getProportionScreenWidth(40),
          ),
        ],
      ),
    );
  }
}
