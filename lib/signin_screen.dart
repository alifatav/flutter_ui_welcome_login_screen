import 'package:flutter/material.dart';
import 'package:ui_welcome_login_screen/constants.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/wp01.jpg'),
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomCenter)),
            )),
        Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("SIGN IN",
                          style: Theme.of(context).textTheme.headline4),
                      Text("SIGN UP", style: TextStyle(color: primaryColor))
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Icon(Icons.alternate_email,
                                color: primaryColor)),
                        Expanded(
                            child: TextField(
                          decoration:
                              InputDecoration(hintText: "Email address"),
                        ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Icon(Icons.lock, color: primaryColor)),
                        Expanded(
                            child: TextField(
                          decoration: InputDecoration(hintText: "Password"),
                        ))
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.white.withOpacity(.5))),
                            child: Icon(
                              Icons.call,
                              color: Colors.white.withOpacity(.5),
                            ),
                          ),
                          SizedBox(width: 20),
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.white.withOpacity(.5))),
                            child: Icon(
                              Icons.chat,
                              color: Colors.white.withOpacity(.5),
                            ),
                          ),
                          Spacer(),
                          Container(
                            padding: EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: primaryColor,
                            ),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.black,
                            ),
                          )
                        ],
                      )),
                ],
              ),
            ))
      ]),
    );
  }
}
