import 'package:flutter/material.dart';
import 'package:mobilecar/size_config/size_config.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({Key? key}) : super(key: key);

  @override
  _PaymentMethodsState createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  final _textController = TextEditingController();
  final _textController2 = TextEditingController();

  final _textController3 = TextEditingController();

  final _textController4 = TextEditingController();

  final _keyController = GlobalKey<FormState>();
  final _keyController2 = GlobalKey<FormState>();
  final _keyController3 = GlobalKey<FormState>();
  final _keyController4 = GlobalKey<FormState>();

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
          "Payment Methods",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(23),
                  top: getProportionScreenHeight(15)),
              child: Container(
                height: getProportionScreenHeight(22),
                width: getProportionScreenWidth(80),
                child: Text(
                  "Payment",
                  style: TextStyle(
                      fontSize: getProportionScreenHeight(18),
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  right: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(20)),
              child: Form(
                key: _keyController,
                child: TextFormField(
                  controller: _textController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(color: Colors.grey)),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      hintText: "Card number",
                      contentPadding: EdgeInsets.only(left: 20)),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Should not be empty";
                    }
                    setState(() {});
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  right: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(20)),
              child: Form(
                key: _keyController2,
                child: TextFormField(
                  controller: _textController2,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(color: Colors.grey)),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      hintText: "Card expirity data",
                      contentPadding: EdgeInsets.only(left: 20)),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Should not be empty";
                    }
                    setState(() {});
                  },
                ),
              ),
            ),
           Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  right: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(20)),
              child: Form(
                key: _keyController3,
                child: TextFormField(
                  controller: _textController3,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(color: Colors.grey)),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      hintText: "Card holder name",
                      contentPadding: EdgeInsets.only(left: 20)),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Should not be empty";
                    }
                    setState(() {});
                  },
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  right: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(20)),
              child: Form(
                key: _keyController4,
                child: TextFormField(
                  controller: _textController4,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(8),
                          ),
                          borderSide: BorderSide(color: Colors.grey)),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      hintText: "CVV",
                      contentPadding: EdgeInsets.only(left: 20)),
                  validator: (val) {
                    if (val!.isEmpty) {
                      return "Should not be empty";
                    }
                    setState(() {});
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: getProportionScreenWidth(20),
                  top: getProportionScreenHeight(331)),
              child: ElevatedButton(
                child: Text("Next"),
                style: ElevatedButton.styleFrom(
                    primary: Color(0XFF272727),
                    minimumSize: Size(getProportionScreenWidth(335),
                        getProportionScreenHeight(54))),
                onPressed: () {
                  setState(() {
                    if (_keyController.currentState!.validate() &&
                        _keyController2.currentState!.validate() &&
                        _keyController3.currentState!.validate() &&
                        _keyController4.currentState!.validate()) {
                      Navigator.pushNamed(context, "/code_keladi");
                    }
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
