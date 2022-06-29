import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  final _numberController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(hintText: "textBoxEmail".tr),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "textBoxNotEmptyInfo".tr;
                  } else if (val.length <= 8) {
                    return "textBoxEmailInfo".tr;
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                controller: _numberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "textBoxPhnNo".tr),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "textBoxNotEmptyInfo".tr;
                  } else if (val.length <= 11) {
                    return "textBoxPhnNoInfo".tr;
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                obscuringCharacter: "*",
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(hintText: "textBoxPassword".tr),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "textBoxNotEmptyInfo".tr;
                  } else if (val.length <= 8) {
                    return "textBoxPasswordInfo".tr;
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: 400,
                child: MaterialButton(
                  textColor: Colors.white,
                  color: Colors.green,
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              actions: [
                                MaterialButton(
                                  color: Colors.amberAccent,
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/success');
                                  },
                                  child: Text("buttonConfirm".tr),
                                ),
                                MaterialButton(
                                  color: Colors.amberAccent,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text("buttonDismiss".tr),
                                )
                              ],
                              content: SizedBox(
                                height: 300,
                                width: 350,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("email".tr),
                                        Text(_emailController.text),
                                      ],
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text("contactNo".tr),
                                          Text(_numberController.text),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("password".tr),
                                        Text(_numberController.text),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    } else {
                      Navigator.pushNamed(context, '/error');
                    }
                  },
                  child: Text("buttonValidate".tr),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
