import 'package:flutter/material.dart';
import 'package:mobilecar/size_config/size_config.dart';

class CodeKeladi extends StatefulWidget {
  const CodeKeladi({Key? key}) : super(key: key);

  @override
  _CodeKeladiState createState() => _CodeKeladiState();
}

class _CodeKeladiState extends State<CodeKeladi> {
  final _textController = TextEditingController();
  final _keyController = GlobalKey<FormState>();
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
                  left: getProportionScreenWidth(81),
                  right: getProportionScreenWidth(67),
                  top: getProportionScreenHeight(20)),
              child: Container(
                height: getProportionScreenHeight(21),
                width: getProportionScreenWidth(226),
                child: Center(
                  child: Text("Please enter the code sent to you"),
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
                      hintText: "Sms number",
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
                  top: getProportionScreenHeight(505)),
              child: ElevatedButton(
                child: Text("Next"),
                style: ElevatedButton.styleFrom(
                    primary: Color(0XFF272727),
                    minimumSize: Size(getProportionScreenWidth(335),
                        getProportionScreenHeight(54))),
                onPressed: () {
                  setState(() {
                    if (_keyController.currentState!.validate()) {
                      Navigator.pushNamed(context, "/my_card");
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
