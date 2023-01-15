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
  List list = [];
  // ignore: prefer_typing_uninitialized_variables
  var h1;
  var i=0;

  Random num = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff15172B),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 1,
            ),
            const Text(
              "OTP Generator",
              style: TextStyle(
                fontSize: 40,
                color: Color(0xffF6DB87),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextField(
                enabled: true,
                decoration: InputDecoration(
                  hintText: "Enter OTP Length",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffFCF6BA),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffFCF6BA),
                    ),
                  ),
                ),
                style: const TextStyle(color: Colors.white, fontSize: 20),
                onChanged: (val){
                  h1=val;
                },
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            InkWell(
              onTap: (){
                setState(() {
                  if(i==0)
                  {
                    if(h1=="1")
                    {
                      list.add(num.nextInt(9));
                    }else if(h1=="2")
                    {
                      list.add(num.nextInt(9));
                      list.add(num.nextInt(9));
                    }else if(h1=="3")
                    {
                      list.add(num.nextInt(9));
                      list.add(num.nextInt(9));
                      list.add(num.nextInt(9));
                    }else if(h1=="4")
                    {
                      list.add(num.nextInt(9));
                      list.add(num.nextInt(9));
                      list.add(num.nextInt(9));
                      list.add(num.nextInt(9));
                    }else if(h1=="5")
                    {
                      list.add(num.nextInt(9));
                      list.add(num.nextInt(9));
                      list.add(num.nextInt(9));
                      list.add(num.nextInt(9));
                      list.add(num.nextInt(9));
                    }else if(h1=="6")
                    {
                      list.add(num.nextInt(9));
                      list.add(num.nextInt(9));
                      list.add(num.nextInt(9));
                      list.add(num.nextInt(9));
                      list.add(num.nextInt(9));
                      list.add(num.nextInt(9));
                    }
                    i++;
                  }
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                        color: Colors.white,
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(2, 2)),
                  ],
                  gradient: const LinearGradient(
                    colors: <Color>[
                      Color(0xffFFE8B8),
                      Color(0xffF6DB87),
                    ],
                  ),
                ),
                child: const Text(
                  "Genarate OTP",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff15172B),
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.1,
              width: MediaQuery.of(context).size.height * 0.45,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  ...list.map((e) => Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "$e",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            InkWell(
              onTap: (){
                setState(() {
                  list.clear();
                  i=0;
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 1,
                      blurRadius: 4,
                    ),
                  ],
                  gradient: const LinearGradient(
                    colors: <Color>[
                      Color(0xffFFE8B8),
                      Color(0xffF6DB87),
                    ],
                  ),
                ),
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xff15172B),
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
