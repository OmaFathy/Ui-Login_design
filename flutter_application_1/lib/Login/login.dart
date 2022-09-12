import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_signin_button/button_builder.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

import '../comp/comp.dart';

class login_screen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // mainAxisAlignment: MainAxisAlignment.center,
                  Stack(
                    children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(55, 55, 55, 450),
                          width: 230,
                          height: 280,
                          child: Image(
                              image: AssetImage("assets/images/login.png")),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 290, 0, 220),
                          child: Text(
                            'Welcome back!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 30.0),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 330, 0, 220),
                          child: Text(
                            'Log in to your existiant account of Q Alure',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 16.0),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 320, 0, 300),
                          child: defaultFormField(
                            style: TextStyle(color: Colors.blue),
                            controller: emailController,
                            label: 'Email',
                            prefix: Icons.person_outline_outlined,
                            type: TextInputType.emailAddress,
                            validate: (value) {
                              if (value.isEmpty) {
                                return 'Email is empty';
                              }

                              return null;
                            },
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 410, 0, 300),
                          child: defaultFormField(
                            style: TextStyle(color: Colors.blue),
                            controller: passwordController,
                            label: 'Password',
                            prefix: Icons.lock,
                            type: TextInputType.visiblePassword,
                            isPassword: true,
                            validate: (value) {
                              if (value.isEmpty) {
                                return 'password is empty';
                              }

                              return null;
                            },
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.fromLTRB(0, 530, 0, 0),
                        child: TextButton(
                          child: Text(
                            'Forget Password?',
                            style: TextStyle(
                              color: Colors.grey[900],
                            ),
                          ),
                          style: TextButton.styleFrom(
                            textStyle: TextStyle(fontSize: 16),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 600, 0, 0),
                          child: defaultButton(
                            text: 'Log In',
                            function: () {
                              if (formKey.currentState!.validate()) {
                                print(emailController.text);
                                print(passwordController.text);
                              }
                            },
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0, 600, 0, 0),
                          child: defaultButton(
                            text: 'Log In',
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(60, 670, 30, 0),
                            child: Text(
                              "Or connect using ",
                              style: TextStyle(
                                  color: Colors.grey[500], fontSize: 18.0),
                            )),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(100, 700, 0, 300),
                          child: SignInButton(
                            Buttons.Facebook,
                            mini: true,
                            onPressed: () {},
                          )),
                      Container(
                          margin: EdgeInsets.fromLTRB(200, 700, 0, 300),
                          child: SignInButton(
                            Buttons.Twitter,
                            mini: true,
                            onPressed: () {},
                          ))
                      ,Center(
                         child: Container(
                             margin: EdgeInsets.fromLTRB(0, 770, 30,0),
                          child: Text("Don't have an acount?")),
                       ),
                        Container(
                      alignment: Alignment.centerRight,
                       margin: EdgeInsets.fromLTRB(0, 752.5,60,350),
                        child: TextButton(
                          child:  Text('Sign UP',
                          style: TextStyle(
                             color: Colors.blue,
                          ),), 
                          style: TextButton.styleFrom(
                            textStyle: TextStyle(
                                  
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {},
                         
                        ),
                      ),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
