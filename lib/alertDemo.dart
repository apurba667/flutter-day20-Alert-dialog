import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AlertDemo extends StatefulWidget {
  const AlertDemo({Key? key}) : super(key: key);

  @override
  State<AlertDemo> createState() => _AlertDemoState();
}

class _AlertDemoState extends State<AlertDemo> {
  final GlobalKey<FormState> _fromkey = GlobalKey<FormState>();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alert Dialog")),
      body: Form(
        key: _fromkey,
        child: Center(
            child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return Dialog(
                    backgroundColor: Colors.transparent,
                    child: Container(
                      height: 400,
                      decoration: BoxDecoration(
                          color: Colors.cyan.withOpacity(0.90),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 70),
                              child: TextFormField(
                                controller: emailcontroller,
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.email),
                                    hintText: "Enter Email",
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide:
                                            BorderSide(color: Colors.red)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.yellow))),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(top: 70),
                              child: TextFormField(
                                obscureText: true,
                                controller: passwordcontroller,
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.password),
                                    hintText: "Enter Password",
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide:
                                            BorderSide(color: Colors.red)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.yellow))),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: ElevatedButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return Dialog(
                                          backgroundColor: Colors.transparent,
                                          child: Container(
                                            height: 500,
                                            decoration: BoxDecoration(
                                                color: Colors.green),
                                            child: Column(
                                              children: [
                                                Text(
                                                  emailcontroller.text,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 30),
                                                ),
                                                Text(
                                                  passwordcontroller.text,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 30),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: Icon(Icons.arrow_downward)),
                          )
                        ],
                      ),
                    ),
                  );
                });
          },
          child: Icon(Icons.login),
        )),
      ),
    );
  }
}
