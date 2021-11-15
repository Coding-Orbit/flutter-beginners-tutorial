import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home: Home()
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isClicked = false;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Styles'),
        centerTitle: true,
      ),
      body: Center(
          child: IconButton(
            onPressed: () {
              //Dart code
              print('clicked');
            },
            icon: const Icon(Icons.favorite),
            iconSize: 50,
            color: Colors.grey,
          )

        // ElevatedButton.icon(
        //   onPressed: (){},
        //   icon: const Icon(
        //     Icons.business,
        //     size: 40,
        //     color: Colors.white,
        //   ),
        //   label: const Text('Click me'),
        // )

        // ElevatedButton(
        //   onPressed: () {},
        //   child: const Text('Click me'),
        //   style: ButtonStyle(
        //     backgroundColor: MaterialStateProperty.all(Colors.yellow),
        //     foregroundColor: MaterialStateProperty.all(Colors.black)
        //   ),
        // )

        // TextButton(
        //   onPressed: () {},
        //   child: const Text('click me'),
        //   style: ButtonStyle(
        //     foregroundColor: MaterialStateProperty.all(Colors.green)
        //   ),
        // )

        // OutlinedButton(
        //   onPressed: () {},
        //   child: const Text('click me'),
        //   style: ButtonStyle(
        //     side: MaterialStateProperty.all(const BorderSide(
        //       width: 2.0,
        //       color: Colors.blue,
        //       style: BorderStyle.solid
        //     )),
        //     foregroundColor: MaterialStateProperty.all(Colors.blue)
        //   ),
        // )

        // CircleAvatar(
        //   radius: 150,
        //   backgroundImage: AssetImage('images/sun.jpg'),
        // ),

        //RaisedButton    ElevatedButton
        //FlatButton      TextButton
        //OutlineButton   OutlinedButton

        // Text(
        //     'Hello there',
        //   style: TextStyle(
        //     fontSize: 30,
        //     color: Colors.red[300],
        //     fontWeight: FontWeight.bold,
        //     fontStyle: FontStyle.italic,
        //     fontFamily: 'Festive'
        //   ),
        // ),

      ),
    );
  }
}
