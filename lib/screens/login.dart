import 'package:flutter/material.dart';
import 'package:my_app/components/menudrawer.dart';
import 'package:my_app/constant/navigation.dart';

class LoginScreen extends StatefulWidget {
  static const String id = loginScreen;
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Login UI"),
          backgroundColor: Colors.amberAccent.shade400,
        ),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset('lib/assets/1.jpg',
                        width: 100, height: 100, fit: BoxFit.cover),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "hello people".toUpperCase(),
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.pink.shade700,
                        ),
                      ),
                      const Text(
                        "Nice",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(height: 30),
              Column(
                children: [
                  Text(
                    "Login UI",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.orange.shade700,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Me lorem isup doller set ametc cool one nice\n for that colller anassmanasns ashasj.",
                    style: TextStyle(color: Colors.black38),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          prefixIcon: Icon(
                            Icons.email_rounded,
                            color: Colors.grey.shade700,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade100),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade100),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          fillColor: Colors.grey.shade300,
                          filled: true,
                          prefixIcon: Icon(
                            Icons.lock_clock_rounded,
                            color: Colors.grey.shade700,
                          ),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.grey.shade700,
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade100),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey.shade100),
                              borderRadius: BorderRadius.circular(10))),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 100),
              Container(
                // ignore: sort_child_properties_last
                child: const Center(
                    child: Text(
                  "Login Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                )),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orangeAccent.shade700,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Dont't have any account yet? ",
                    style: TextStyle(color: Colors.black45),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.orangeAccent.shade700,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
