import 'package:flutter/material.dart';
import 'package:mobilecar/pages/home_page.dart';

class Welcome_Back extends StatefulWidget {
  const Welcome_Back({Key? key}) : super(key: key);

  @override
  _Welcome_BackState createState() => _Welcome_BackState();
}

class _Welcome_BackState extends State<Welcome_Back> {
  var _nameController2 = TextEditingController();
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
            const Padding(
              padding: EdgeInsets.only(top: 130, left: 103, right: 103),
              child: Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 65, left: 20),
              child: Container(
                height: 54,
                width: 335,
                child: Center(
                  child: TextFormField(
                    onChanged: (val) {
                      _nameController2.addListener(() {
                        if (val.length == 8) {
                          setState(() {});
                        }
                      });
                    },
                    controller: _nameController2,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      prefixText: "+998 ",
                      hintText: "Phone number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45, left: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.grey),
                    minimumSize: const Size(335, 54),
                    primary: _nameController2.text.length >= 8
                        ? Colors.yellow
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
