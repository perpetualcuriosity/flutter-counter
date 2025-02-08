import 'package:flutter/material.dart';

class Scaff extends StatefulWidget {
  const Scaff({super.key});
  @override
  State<Scaff> createState() => _Scaff();
}

class _Scaff extends State<Scaff> {
  List<Color> col = [Color(0xff200122), Color(0xff6f0000)];
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Counter',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )),
        flexibleSpace: Container(
          decoration: BoxDecoration(gradient: LinearGradient(colors: col)),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: col)),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text('$count',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 100)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        count = count + 1;
                      });
                    },
                    icon: Icon(Icons.arrow_upward)),
                    IconButton(
                    onPressed: () {
                      setState(() {
                        count = count - 1;
                      });
                    },
                    icon: Icon(Icons.arrow_downward)),
                    IconButton(
                    onPressed: () {
                      setState(() {
                        count = 0;
                      });
                    },
                    icon: Icon(Icons.restore),
                    )
              ]
            )
          ],
        )),
      ),
    );
  }
}
