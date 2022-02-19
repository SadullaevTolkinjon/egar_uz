import 'package:flutter/material.dart';
import 'package:mobilecar/pages/home_page.dart';

class Verification_Code extends StatefulWidget {
  const Verification_Code({Key? key}) : super(key: key);

  @override
  _Verification_CodeState createState() => _Verification_CodeState();
}

class _Verification_CodeState extends State<Verification_Code> {
  var _nameController = TextEditingController();
  var _nameController2 = TextEditingController();
  var _nameController3 = TextEditingController();
  var _nameController4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Back",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 151.0, left: 100, right: 100),
              child: Container(
                height: 21,
                width: 210,
                child: Center(
                  child: Text(
                    "Enter Verification code",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 112, right: 112),
              child: Container(
                height: 30,
                width: 141,
                child: Center(
                  child: Text(
                    "Enter OPT code send to your mobile number",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color(0XFFB4B4B4)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 37, left: 52, right: 52),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 48.13,
                    width: 55,
                    decoration: BoxDecoration(
                      color: _nameController.text.length == 1
                          ? Colors.amber.shade100
                          : Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 21,
                        top: 10,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                        controller: _nameController,
                        onChanged: (val) {
                          _nameController.addListener(() {
                            if (val.length == 1) {
                              setState(() {});
                            }
                          });
                        },
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(),
                      ),
                    ),
                  ),
                  Container(
                    height: 48.13,
                    width: 55,
                    decoration: BoxDecoration(
                      color: _nameController2.text.length == 1
                          ? Colors.amber.shade100
                          : Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 21,
                        top: 10,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                        controller: _nameController2,
                        onChanged: (val) {
                          _nameController2.addListener(() {
                            if (val.length == 1) {
                              setState(() {});
                            }
                          });
                        },
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(),
                      ),
                    ),
                  ),
                  Container(
                    height: 48.13,
                    width: 55,
                    decoration: BoxDecoration(
                      color: _nameController3.text.length == 1
                          ? Colors.amber.shade100
                          : Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 21,
                        top: 10,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                        controller: _nameController3,
                        onChanged: (val) {
                          _nameController3.addListener(() {
                            if (val.length == 1) {
                              setState(() {});
                            }
                          });
                        },
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(),
                      ),
                    ),
                  ),
                  Container(
                    height: 48.13,
                    width: 55,
                    decoration: BoxDecoration(
                      color: _nameController4.text.length == 1
                          ? Colors.amber.shade100
                          : Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 21,
                        top: 10,
                      ),
                      child: TextFormField(
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                        controller: _nameController4,
                        onChanged: (val) {
                          _nameController4.addListener(() {
                            if (val.length == 1) {
                              setState(() {});
                            }
                          });
                        },
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35, left: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                    minimumSize: const Size(335, 54),
                    primary: _nameController4.text.length == 1
                        ? Colors.amber.shade100
                        : Colors.white,
                    elevation: 0),
                child: const Text(
                  "Next",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/homepage");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
