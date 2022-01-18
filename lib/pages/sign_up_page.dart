import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static final String id = "sign_up_page";

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                  end: Alignment.center,
                  colors: [
                Colors.grey.shade900,
                Colors.grey.shade800,
                Colors.grey.shade700,

                // Colors.black45
              ])),
          child: Column(
            children: [
              // Sign Up and Welcome texts
              Expanded(
                flex: 1,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 30, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Welcome",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(
                              40,
                            ),
                            topLeft: Radius.circular(40))),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),

                        // TextFields
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromRGBO(171, 171, 171, 0.7),
                                    blurRadius: 20,
                                    offset: Offset(0, 10)),
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 5),
                                    hintText: "FullName",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 0,
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 5),
                                    hintText: "Email",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 0,
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 5),
                                    hintText: "Phone",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ),
                              ),
                              Divider(
                                height: 0,
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 5),
                                    hintText: "Password",
                                    border: InputBorder.none,
                                    hintStyle: TextStyle(
                                        fontSize: 15, color: Colors.grey),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),

                        //Sign Up button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              primary: Colors.black38,
                              fixedSize: Size(
                                  MediaQuery.of(context).size.width / 2, 45)),
                          onPressed: () {},
                          child: Text(
                            "SignUp",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        Text(
                          "Sign Up with SNS",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        // Buttons
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)),
                                  primary: Colors.blueAccent,
                                  fixedSize: Size(
                                      MediaQuery.of(context).size.width / 4,
                                      45)),
                              onPressed: () {},
                              child: Text(
                                "Facebook",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)),
                                  primary: Colors.red,
                                  fixedSize: Size(
                                      MediaQuery.of(context).size.width / 4,
                                      45)),
                              onPressed: () {},
                              child: Text(
                                "Google",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20)),
                                  primary: Colors.black,
                                  fixedSize: Size(
                                      MediaQuery.of(context).size.width / 4,
                                      45)),
                              onPressed: () {},
                              child: Text(
                                "Apple",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
