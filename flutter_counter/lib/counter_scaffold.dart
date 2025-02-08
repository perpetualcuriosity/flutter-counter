import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
class Scaff extends StatefulWidget {
  const Scaff({super.key});
  @override
  State<Scaff> createState() => _Scaff();
}

class _Scaff extends State<Scaff> {
  List<Color> col = [Color(0xff000000), Color(0xff434343)];
  int count = 0;
  void alert(context)
  {
    Alert(
      context: context,
      title: " Oops! ",
      desc: " Counter Cannot Go Below 0! ",
    ).show();
  }
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
                    icon: Icon(Icons.arrow_upward,color: Colors.green,size: 50)),
                    IconButton(
                    onPressed: () {
                      setState(() {
                        if(count >= 1)
                        {
                        count = count - 1;
                        }
                        else{
                          alert(context);
                        }
                      });
                    },
                    icon: Icon(Icons.arrow_downward,color: Colors.red,size: 50)),
                    IconButton(
                    onPressed: () {
                      setState(() {
                        count = 0;
                      });
                    },
                    icon: Icon(Icons.restore,color: Colors.white,size: 50),
                    )
              ]
            )
          ],
        )),
      ),
    );
  }
}

