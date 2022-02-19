import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobilecar/size_config/size_config.dart';

class BookedSuccesfully extends StatelessWidget {
  const BookedSuccesfully({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children: [
          Padding(
            padding:  EdgeInsets.only(top: getProportionScreenHeight(240)),
            child: Container(
              height: getProportionScreenHeight(140),
              width: getProportionScreenWidth(140),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(70),
                  ),
                  border: Border.all(color: Colors.black, width: 2.0)),
              child: Center(
                child: Container(
                  height: getProportionScreenHeight(45),
                  width: getProportionScreenWidth(51),
                  child: SvgPicture.asset(
                    "assets/fonts/check.svg",
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 17),
            child: Container(
              height: getProportionScreenHeight(72),
              width: getProportionScreenWidth(204),
              child: Text("Car has been booked succesfully!",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: getProportionScreenHeight(20),
                      fontWeight: FontWeight.w700)),
            ),
          ),
           Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(305),
                right: getProportionScreenWidth(20))
                ,
            child: ElevatedButton(
              child: Text("Back to home"),
              style: ElevatedButton.styleFrom(
                  primary: Color(0XFF272727),
                  minimumSize: Size(getProportionScreenWidth(335),
                      getProportionScreenHeight(54))),
              onPressed: () {
                Navigator.pushNamed(context, "/homepage");
              },
            ),
          ),
        ],
      ),
    );
  }
}
