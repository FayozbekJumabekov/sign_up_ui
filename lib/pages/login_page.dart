import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static final String id = "login_page";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List<String> textList = ["powered", "by", "#PDPAcademy"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.green.shade900,
                Colors.green,
                Colors.green.shade400,
              ])),
          child: Column(
            children: [
              // Login and Welcome text
              Container(
                height: 200,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Log In",
                      style: TextStyle(color: Colors.white, fontSize: 35),
                    ),
                    Text(
                      "Welcome back",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),

                      // TextFields
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(
                                    0.4,
                                  ),
                                  offset: Offset(0, 10),
                                  blurRadius: 20,
                                  spreadRadius: 10)
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextField(
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  hintText: "Email",
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                  border: InputBorder.none),
                            ),
                            Divider(
                              height: 10,
                              color: Colors.black87,
                              thickness: 0.5,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                  border: InputBorder.none),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 30,
                      ),

                      // Login Button
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green.shade600,
                            fixedSize: Size(200, 45),
                            shape: StadiumBorder(),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Log In",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )),

                      SizedBox(
                        height: 25,
                      ),

                      // text
                      Text(
                        "Log in with SNS",
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),

                      SizedBox(
                        height: 25,
                      ),

                      // buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.blue.shade600,
                                fixedSize: Size(150, 45),
                                shape: StadiumBorder(),
                              ),
                              onPressed: () {},
                              child: Text(
                                "FaceBook",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )),
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                fixedSize: Size(150, 45),
                                shape: StadiumBorder(),
                              ),
                              onPressed: () {},
                              child: Text(
                                "GitHub",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 130,
                      ),

                      RichText(
                          text: TextSpan(
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                              children: List.generate(textList.length, (index) {
                                return textList.elementAt(index).startsWith("#")
                                    ? TextSpan(
                                        text: "${textList[index]} ",
                                        style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {})
                                    : TextSpan(
                                        text: "${textList[index]} ",
                                        style: TextStyle(color: Colors.black));
                              })))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
