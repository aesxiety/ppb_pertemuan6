import 'package:flutter/material.dart';

class MyHomePages extends StatefulWidget {
  const MyHomePages({super.key});

  @override
  State<MyHomePages> createState() => _MyHomePagesState();
}

class _MyHomePagesState extends State<MyHomePages> {
   bool selected = false;
  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            width: lebar,
            height: tinggi,
            color: Colors.amberAccent,
            child: Center(
              child: GestureDetector(
                // width: lebar / 5,
                // height: tinggi / 2,
                // color: Colors.blue,
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                child: Center(
                  child: AnimatedContainer(
                    width: selected ? 300.0 : 100.0,
                    height: selected ? 300.0 : 100.0,
                    color: selected ? Colors.red : Colors.blue,
                    alignment: selected
                        ? Alignment.center
                        : AlignmentDirectional.topCenter,
                    duration: const Duration(seconds: 2),
                    curve: Curves.fastOutSlowIn,
                  ),
                ),
              ),
            ),
          ),
        ],
     ),
    );
  }
}


