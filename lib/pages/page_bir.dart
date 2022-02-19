import 'package:flutter/material.dart';
import 'package:mobilecar/sign_up/sign_up.dart';
import 'package:mobilecar/sign_up/welcome_back.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.999,
            width: double.infinity,
            color: const Color(0XFF16256D),
            child: Stack(
              fit: StackFit.expand,
              children: [
                const Positioned(
                  child: Image(
                    image: NetworkImage(
                        "https://i.pinimg.com/564x/a6/97/41/a6974142e2fa04b4a44620fda8901510.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 120,
                  left: 25,
                  child: Text(
                    "Welcome",
                    style:
                        TextStyle(color: Colors.grey.shade300, fontSize: 40.0),
                  ),
                ),
                Positioned(
                  top: 170,
                  left: 45,
                  child: Text(
                    "Luxury Cars mall",
                    style:
                        TextStyle(color: Colors.grey.shade300, fontSize: 35.0),
                  ),
                ),
                Positioned(
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Sign in",
                          style: TextStyle(
                              color: Colors.grey.shade300, fontSize: 20.0),
                        ),
                        Icon(
                          Icons.login,
                          color: Colors.grey.shade300,
                        )
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/signup");
                    },
                  ),
                  bottom: 50,
                  right: 40,
                ),
                Positioned(
                  child: InkWell(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Have account?",
                          style: TextStyle(
                              color: Colors.grey.shade300, fontSize: 18.0),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/welcome_back");
                    },
                  ),
                  bottom: 50,
                  left: 40,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
