import 'package:flutter/material.dart';

class Messaging extends StatefulWidget {
  const Messaging({Key? key}) : super(key: key);

  @override
  _MessagingState createState() => _MessagingState();
}

class _MessagingState extends State<Messaging> with TickerProviderStateMixin {
  @override
  final _nameController = TextEditingController();
  List malumot = [];

  @override
  Widget build(BuildContext context) {
    final _timer = DateTime.now().hour;
    final _minute = DateTime.now().minute;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          "Messages",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.805,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    child: Row(
                      mainAxisAlignment: index.isEven
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        Container(
                          key: PageStorageKey(index),
                          width: 150,
                          height: 50.0,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("${malumot[index]}"),
                                ],
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                        )
                      ],
                    ),
                    margin: EdgeInsets.only(top: 5.0),
                    height: MediaQuery.of(context).size.height * 0.05,
                  );
                },
                itemCount: malumot.length,
                reverse: true,
              ),
            ),
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                
                prefixIcon: Icon(Icons.emoji_emotions),
                suffixIcon: InkWell(
                  child: Icon(Icons.send),
                  onTap: () {
                    setState(() {
                      malumot.add(_nameController.text);

                      _nameController.clear();
                    });
                  },
                ),
                hintText: "Message",
                border: OutlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.none),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
