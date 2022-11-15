// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import '../widgets/auth_widget.dart';

final TextEditingController _nameController = TextEditingController();
final TextEditingController _emailController = TextEditingController();
final TextEditingController _passswordController = TextEditingController();

class CustomerRegistor extends StatefulWidget {
  const CustomerRegistor({super.key});

  @override
  State<CustomerRegistor> createState() => _CustomerRegistorState();
}

class _CustomerRegistorState extends State<CustomerRegistor> {
  late String name;
  late String password;
  late String email;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passwordVisibe = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            reverse: true,
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Form(
                key: _formKey,
                child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const AuthHeaderLebel(
                        headerLabel: 'Sign Up',
                      ),
                      Padding(
                        padding: const EdgeInsets.all(18),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 30),
                              child: CircleAvatar(
                                backgroundColor: Colors.purpleAccent,
                                radius: 60,
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.purple,
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15))),
                                  child: IconButton(
                                      onPressed: () {
                                        // ignore: avoid_print
                                        print('Pick photo from camera');
                                      },
                                      icon: const Icon(
                                        Icons.camera_alt,
                                        color: Colors.white,
                                      )),
                                ),
                                // ignore: prefer_const_constructors
                                SizedBox(
                                  height: 6,
                                ),
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.purple,
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15),
                                          bottomRight: Radius.circular(15))),
                                  child: IconButton(
                                      onPressed: () {
                                        // ignore: avoid_print
                                        print('Pick photo from gallary');
                                      },
                                      icon: const Icon(
                                        Icons.photo,
                                        color: Colors.white,
                                      )),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your name';
                              } else {
                                return null;
                              }
                            },
                            onChanged: (value) {
                              name = value;
                              print(name);
                            },
                            //controller: _nameController,
                            decoration: inputFeildDecoration.copyWith(
                                labelText: 'Full Name',
                                hintText: 'enter your name')),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your email adress';
                              } else if (value.isValidEmail() == false) {
                                return 'Invalid Email';
                              } else if (value.isValidEmail() == true) {
                                return null;
                              } else {
                                return null;
                              }
                            },
                            onChanged: (value) {
                              email = value;
                              print(email);
                            },
                            // controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            decoration: inputFeildDecoration.copyWith(
                                labelText: 'Email Adress',
                                hintText: 'enter your email')),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter your password';
                              }
                              {
                                return null;
                              }
                            },
                            onChanged: (value) {
                              password = value;
                              print(password);
                            },
                            // controller: _passswordController,
                            obscureText: passwordVisibe,
                            decoration: inputFeildDecoration.copyWith(
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        passwordVisibe = !passwordVisibe;
                                      });
                                    },
                                    icon: Icon(
                                      passwordVisibe
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: Colors.purple,
                                      size: 30,
                                    )),
                                labelText: 'Password',
                                hintText: 'enter your password')),
                      ),
                      HaveAccount(
                        haveAccount: 'Have you an account? ',
                        actionLebel: 'Log In',
                        onPressed: () {},
                      ),
                      AuthMainButton(
                        mainButtonLabel: 'Sign Up',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // ignore: avoid_print
                            print('valid');
                            // setState(() {
                            //   name = _nameController.text;
                            //   email = _emailController.text;
                            //   password = _passswordController.text;
                            // });
                            print(name);
                            print(email);
                            print(password);
                          } else {
                            print('not valid');
                          }
                        },
                      )
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
