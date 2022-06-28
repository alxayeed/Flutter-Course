import 'package:assignment5/pages/error.dart';
import 'package:assignment5/pages/sucees_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _numberController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text("I N P U T S"),
      ),
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
                decoration: const InputDecoration(hintText: "Enter email"),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Email can't be empty";
                  } else if (val.length <= 8) {
                    return "Email should be more than 8 letters";
                  } else {
                    return null;
                  }
                },
              ),
              TextFormField(
                controller: _numberController,
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(hintText: "Enter phone number"),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Phone number can't be empty";
                  } else if (val.length <= 11) {
                    return "Phone number should be 11 digits";
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
                decoration: const InputDecoration(hintText: "Enter Password"),
                validator: (val) {
                  if (val!.isEmpty) {
                    return "Password can't be empty";
                  } else if (val.length <= 8) {
                    return "Password should be at least  8 letters";
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
                                  child: const Text("Confirm"),
                                ),
                                MaterialButton(
                                  color: Colors.amberAccent,
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Dismiss"),
                                )
                              ],
                              content: SizedBox(
                                height: 300,
                                width: 350,
                                child: Column(
                                  children: [
                                    Text("Email: ${_emailController.text}"),
                                    Text(
                                        "Contact Number: ${_numberController.text}"),
                                    Text(
                                        "Password: ${_passwordController.text}"),
                                  ],
                                ),
                              ),
                            );
                          });
                    } else {
                      Navigator.pushNamed(context, '/error');
                    }
                  },
                  child: const Text("Validate"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
