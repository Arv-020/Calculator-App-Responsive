import 'package:calculator/components/button.dart';
import 'package:calculator/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var userinput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child:
                        // margin: const EdgeInsets.only(left: 10),

                        Text(
                      userinput,
                      style: const TextStyle(color: txt, fontSize: fontSize),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      answer,
                      style: const TextStyle(color: txt, fontSize: fontSize),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Button(
                        onPress: () {
                          userinput = '';
                          answer = '';
                          setState(() {});
                        },
                        title: 'AC',
                        titleColor: txt,
                        btnbg: grey,
                      ),
                      Button(
                        onPress: () {},
                        title: '-/+',
                        titleColor: txt,
                        btnbg: grey,
                      ),
                      Button(
                        onPress: () {
                          userinput += '%';
                          setState(() {});
                        },
                        title: '%',
                        titleColor: txt,
                        btnbg: grey,
                      ),
                      Button(
                        onPress: () {
                          userinput += '/';
                          setState(() {});
                        },
                        title: '/',
                        titleColor: txt,
                        btnbg: orange,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Button(
                        onPress: () {
                          userinput += '7';
                          setState(() {});
                        },
                        title: '7',
                        titleColor: txt,
                        btnbg: grey,
                      ),
                      Button(
                        onPress: () {
                          userinput += '8';
                          setState(() {});
                        },
                        title: '8',
                        titleColor: txt,
                        btnbg: grey,
                      ),
                      Button(
                        onPress: () {
                          userinput += '9';
                          setState(() {});
                        },
                        title: '9',
                        titleColor: txt,
                        btnbg: grey,
                      ),
                      Button(
                        onPress: () {
                          userinput += '*';
                          setState(() {});
                        },
                        title: 'x',
                        titleColor: txt,
                        btnbg: orange,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Button(
                        onPress: () {
                          userinput += '4';
                          setState(() {});
                        },
                        title: '4',
                        titleColor: txt,
                        btnbg: grey,
                      ),
                      Button(
                        onPress: () {
                          userinput += '5';
                          setState(() {});
                        },
                        title: '5',
                        titleColor: txt,
                        btnbg: grey,
                      ),
                      Button(
                        onPress: () {
                          userinput += '6';
                          setState(() {});
                        },
                        title: '6',
                        titleColor: txt,
                        btnbg: grey,
                      ),
                      Button(
                        onPress: () {
                          userinput += '-';
                          setState(() {});
                        },
                        title: '-',
                        titleColor: txt,
                        btnbg: orange,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Button(
                        onPress: () {
                          userinput += '1';
                          setState(() {});
                        },
                        title: '1',
                        titleColor: txt,
                        btnbg: grey,
                      ),
                      Button(
                        onPress: () {
                          userinput += '2';
                          setState(() {});
                        },
                        title: '2',
                        titleColor: txt,
                        btnbg: grey,
                      ),
                      Button(
                        onPress: () {
                          userinput += '3';
                          setState(() {});
                        },
                        title: '3',
                        titleColor: txt,
                        btnbg: grey,
                      ),
                      Button(
                        onPress: () {
                          userinput += '+';
                          setState(() {});
                        },
                        title: '+',
                        titleColor: txt,
                        btnbg: orange,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Button(
                        onPress: () {
                          userinput += '.';
                          setState(() {});
                        },
                        title: '.',
                        titleColor: txt,
                        btnbg: grey,
                      ),
                      Button(
                        onPress: () {
                          userinput += '0';
                          setState(() {});
                        },
                        title: '0',
                        titleColor: txt,
                        btnbg: grey,
                      ),
                      Button(
                        onPress: () {
                          userinput =
                              userinput.substring(0, userinput.length - 1);
                          setState(() {});
                        },
                        title: 'DEL',
                        titleColor: txt,
                        btnbg: grey,
                      ),
                      Button(
                        onPress: () {
                          getequals();

                          setState(() {});
                        },
                        title: '=',
                        titleColor: txt,
                        btnbg: orange,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getequals() {
    if (userinput.isEmpty) {
      answer = '';
    } else {
      String finaluser = userinput;
      finaluser.replaceAll('X', '*');
      Parser p = Parser();
      Expression exp = p.parse(finaluser);
      ContextModel contextModel = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, contextModel);
      answer = eval.toString();
    }
  }
}
