import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:my_app/components/calculator/calculatorbtn.dart';
import 'package:my_app/constant/colors.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  var userInput = '';
  var answer = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: blackColor,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userInput.toString(),
                          style: TextStyle(color: whiteColor, fontSize: 30),
                        ),
                      ),
                      Text(
                        answer.toString(),
                        style: TextStyle(color: whiteColor, fontSize: 30),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Row(
                      children: [
                        CalculatorButton(
                          title: "Ac",
                          onPress: () {
                            setState(() {
                              userInput = '';
                              answer = '';
                            });
                          },
                        ),
                        CalculatorButton(
                          title: "+/-",
                          onPress: () {
                            setState(() {
                              userInput += "+/-";
                            });
                          },
                        ),
                        CalculatorButton(
                          title: "%",
                          onPress: () {
                            setState(() {
                              userInput += "%";
                            });
                          },
                        ),
                        CalculatorButton(
                          title: "/",
                          color: secondaryColor,
                          onPress: () {
                            setState(() {
                              userInput += "/";
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CalculatorButton(
                          title: "7",
                          onPress: () {
                            setState(() {
                              userInput += '7';
                            });
                          },
                        ),
                        CalculatorButton(
                          title: "8",
                          onPress: () {
                            setState(() {
                              userInput += '8';
                            });
                          },
                        ),
                        CalculatorButton(
                          title: "9",
                          onPress: () {
                            setState(() {
                              userInput += '9';
                            });
                          },
                        ),
                        CalculatorButton(
                          title: "x",
                          color: secondaryColor,
                          onPress: () {
                            setState(() {
                              userInput += "x";
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CalculatorButton(
                          title: "4",
                          onPress: () {
                            setState(() {
                              userInput += '4';
                            });
                          },
                        ),
                        CalculatorButton(
                          title: "5",
                          onPress: () {
                            setState(() {
                              userInput += '5';
                            });
                          },
                        ),
                        CalculatorButton(
                          title: "6",
                          onPress: () {
                            setState(() {
                              userInput += '6';
                            });
                          },
                        ),
                        CalculatorButton(
                          title: "+",
                          color: secondaryColor,
                          onPress: () {
                            setState(() {
                              userInput += "+";
                            });
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CalculatorButton(
                          title: "1",
                          onPress: () {
                            setState(() {
                              userInput += '1';
                            });
                          },
                        ),
                        CalculatorButton(
                          title: "2",
                          onPress: () {
                            setState(() {
                              userInput += '2';
                            });
                          },
                        ),
                        CalculatorButton(
                          title: "3",
                          onPress: () {
                            setState(() {
                              userInput += '3';
                            });
                          },
                        ),
                        CalculatorButton(
                          title: "-",
                          color: secondaryColor,
                          onPress: () {
                            userInput += "-";
                          },
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CalculatorButton(
                          title: "0",
                          onPress: () {
                            setState(() {
                              userInput = '0';
                            });
                          },
                        ),
                        CalculatorButton(
                          title: ".",
                          onPress: () {
                            userInput += ".";
                          },
                        ),
                        CalculatorButton(
                          title: "DEL",
                          onPress: () {
                            setState(() {
                              userInput =
                                  userInput.substring(0, userInput.length - 1);
                            });
                          },
                        ),
                        CalculatorButton(
                          title: "=",
                          color: secondaryColor,
                          onPress: () {
                            equalPress();
                            setState(() {
                              userInput += "=";
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  void equalPress() {
    String finalUserInput = userInput.replaceAll("x", "*");
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
