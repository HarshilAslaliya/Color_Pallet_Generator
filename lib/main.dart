import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List h1 = [
    Colors.red,
    Colors.teal,
    Colors.indigo,
    Colors.purple.shade300,
    Colors.lightGreen,
    Colors.greenAccent,
    Colors.amber,
    Colors.orange,
    Colors.amberAccent,
    Colors.blueGrey,
    Colors.deepPurpleAccent,
  ];

  Random num = Random();
  int? i1;
  int? i2;
  int? i3;
  int? i4;
  int? i5;
  int? i6;

  @override
  Widget build(BuildContext context) {
    i1 = num.nextInt(6);
    i2 = num.nextInt(6);
    i3 = num.nextInt(6);
    i4 = num.nextInt(6);
    i5 = num.nextInt(6);
    i6 = num.nextInt(6);
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            const Text(
              "Color Palette",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff3BB3F9),
              ),
            ),
            const Text(
              "Generator",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff3BB3F9),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      color: h1[i1!],
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      color: h1[i2!],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      color: h1[i3!],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      color: h1[i4!],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      color: h1[i5!],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.096,
                    decoration: BoxDecoration(
                      color: h1[i6!],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  h1[i1!];
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  color: const Color(0xffD8E6F4),
                  border: Border.all(color: const Color(0xff3BB3F9), width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Generator",
                  style: TextStyle(
                    color: Color(0xff3BB3F9),
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
