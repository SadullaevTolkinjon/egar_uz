import 'package:flutter/material.dart';
import 'package:mobilecar/class_data_base.dart';
import 'package:mobilecar/database.dart';
import 'package:mobilecar/size_config/size_config.dart';

class ConfirmBooking extends StatefulWidget {
  var data;
  ConfirmBooking({Key? key, this.data}) : super(key: key);

  @override
  _ConfirmBookingState createState() => _ConfirmBookingState();
}

class _ConfirmBookingState extends State<ConfirmBooking> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          "Check Out Details",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(10)),
            child: Container(
              height: getProportionScreenHeight(21),
              width: getProportionScreenWidth(140),
              color: Colors.amber,
              child: Center(
                child: Text(
                  widget.data[3].toString(),
                  style: TextStyle(
                      fontSize: getProportionScreenHeight(13),
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: getProportionScreenHeight(5)),
            child: Padding(
              padding: EdgeInsets.only(left: getProportionScreenWidth(20)),
              child: Text(
                widget.data[2].toString(),
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: getProportionScreenHeight(20),
                    fontWeight: FontWeight.w700),
              ),
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
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: getProportionScreenHeight(23.5)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getProportionScreenWidth(20)),
                  child: Text(
                    "Minimal driver age:",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: getProportionScreenHeight(18),
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Text("23",
                    style: TextStyle(
                        color: Color(0XFFD9D9D9),
                        fontStyle: FontStyle.normal,
                        fontSize: getProportionScreenHeight(18),
                        fontWeight: FontWeight.w700))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: getProportionScreenHeight(25.0)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getProportionScreenWidth(20)),
                  child: Text(
                    "Deposit:",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: getProportionScreenHeight(18),
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Text("500 USD",
                    style: TextStyle(
                        color: Color(0XFFD9D9D9),
                        fontStyle: FontStyle.normal,
                        fontSize: getProportionScreenHeight(18),
                        fontWeight: FontWeight.w700))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: getProportionScreenHeight(25.0)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getProportionScreenWidth(20)),
                  child: Text(
                    "Price from:",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: getProportionScreenHeight(18),
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Text("100 USD/day",
                    style: TextStyle(
                        color: Color(0XFFD9D9D9),
                        fontStyle: FontStyle.normal,
                        fontSize: getProportionScreenHeight(18),
                        fontWeight: FontWeight.w700))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: getProportionScreenHeight(25.0)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getProportionScreenWidth(20)),
                  child: Text(
                    "Rent Duration",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: getProportionScreenHeight(18),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: getProportionScreenHeight(8)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getProportionScreenWidth(20)),
                  child: Text(
                    "From:23 dec 2021",
                    style: TextStyle(
                        color: Color(0XFFD9D9D9),
                        fontStyle: FontStyle.normal,
                        fontSize: getProportionScreenHeight(14),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getProportionScreenWidth(30)),
                  child: Text(
                    "To:28 dec 2021",
                    style: TextStyle(
                        color: Color(0XFFD9D9D9),
                        fontStyle: FontStyle.normal,
                        fontSize: getProportionScreenHeight(14),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: getProportionScreenWidth(30)),
                  child: Text(
                    "Edit",
                    style: TextStyle(
                        color: Color(0XFFD9D9D9),
                        fontStyle: FontStyle.normal,
                        fontSize: getProportionScreenHeight(10),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.edit,
                      size: getProportionScreenHeight(18),
                      color: Color(0XFFD9D9D9),
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: getProportionScreenHeight(25.0)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getProportionScreenWidth(20)),
                  child: Text(
                    "Payment Method",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: getProportionScreenHeight(18),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: getProportionScreenHeight(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getProportionScreenWidth(20)),
                  child: Text(
                    "Uzcard",
                    style: TextStyle(
                        color: Color(0XFFD9D9D9),
                        fontStyle: FontStyle.normal,
                        fontSize: getProportionScreenHeight(14),
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: getProportionScreenWidth(20)),
                  child: Row(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(left: getProportionScreenWidth(30)),
                        child: Text(
                          "Edit",
                          style: TextStyle(
                              color: Color(0XFFD9D9D9),
                              fontStyle: FontStyle.normal,
                              fontSize: getProportionScreenHeight(10),
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.edit,
                            size: getProportionScreenHeight(18),
                            color: Color(0XFFD9D9D9),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: getProportionScreenHeight(139.0)),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: getProportionScreenWidth(20)),
                  child: Text(
                    "Total Cost: 750\$",
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: getProportionScreenHeight(18),
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(20)),
            child: ElevatedButton(
              child: Text("Confirm Booking"),
              style: ElevatedButton.styleFrom(
                  primary: Color(0XFF272727),
                  minimumSize: Size(getProportionScreenWidth(335),
                      getProportionScreenHeight(54))),
              onPressed: () {
                Navigator.pushNamed(context, "/booked_succesfully");
                myRental.add(Jonat(
                  rasm: widget.data[0].toString(),
                  narx: widget.data[1].toString(),
                  nom: widget.data[2].toString(),
                  vaqt: widget.data[3].toString(),
                ));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionScreenWidth(20),
                top: getProportionScreenHeight(10)),
            child: ElevatedButton(
              child: Text(
                "Cancel",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.grey),
                  elevation: 0,
                  minimumSize: Size(getProportionScreenWidth(335),
                      getProportionScreenHeight(54))),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
