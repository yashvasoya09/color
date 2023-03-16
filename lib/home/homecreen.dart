import 'package:flutter/material.dart';
import 'dart:math';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List l1 = [
    Colors.green,
    Colors.blue,
    Colors.red,
    Colors.grey,
    Colors.amber,
    Colors.purple,
    Colors.indigo,
    Colors.deepPurple,
    Colors.black38,
    Colors.lightBlue,
    Colors.white10,
    Colors.deepOrange,
    Colors.brown,
    Colors.lightGreenAccent,
  ];
  int a = 0, b = 0, c = 0, d = 0, e = 0, f = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Text
            Text(
              "Color Palette \n   Generator",
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            //Box
            Column(
              children: [
                Container(
                  height: 75,
                  width: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    color: l1[a],
                  ),
                ),
                colorbox(l1[b]),
                colorbox(l1[c]),
                colorbox(l1[d]),
                colorbox(l1[e]),
                Container(
                  height: 75,
                  width: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: l1[f],
                  ),
                ),
              ],
            ),
            //Generate
            InkWell(
              onTap: () {

                setState(() {
                  Random rnd = Random();
                  a = rnd.nextInt(14);
                  b = rnd.nextInt(14);
                  while(b==a)
                  {
                    b = rnd.nextInt(14);
                  }
                  c = rnd.nextInt(14);
                  while(c==b || c==a)
                  {
                    c = rnd.nextInt(14);
                  }
                  d = rnd.nextInt(14);
                  while(d==c || d==b || d==a)
                  {
                    d = rnd.nextInt(14);
                  }
                  e = rnd.nextInt(14);
                  while(e==d || e==c || e==b || e==a)
                  {
                    e = rnd.nextInt(14);
                  }
                  f = rnd.nextInt(14);
                  while(f==e || e==d || e==c || e==b || e==a)
                  {
                    f = rnd.nextInt(14);
                  }
                });
              },
              child: Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: Colors.deepPurple,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Generate",
                  style: TextStyle(color: Colors.deepPurple, fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget colorbox(Color l1) {
    return Container(
      height: 75,
      width: 125,
      color: l1,
    );
  }
}