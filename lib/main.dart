import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      home: MyStatefulWidget()
  ));
}

//Stateless widget which doesn't change over time
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('This is a title'),
        centerTitle: true,
      ),
      body: const Center(
          child: Text('hello there',)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Here we can write some dart code
        },
        tooltip: 'This is floating action button',
        child: const Icon(Icons.add),
      ),
    );
  }
}


//Stateful widget which has the ability to change over time and update its content
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  //Late means we will initialize this variable later
  late int counter;

  //The first method executes when we show this widget
  //We can initialize some variable before loading the actual widget
  @override
  void initState() {
    print('initState');
    counter = 0;
    super.initState();
  }

  //This method gets called whenever we get rid of the screen
  //For example when we navigate to another screen and kill this one
  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is a title'),
        centerTitle: true,
      ),
      body: Center(
          child: Text('$counter',)
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Dart code
          setState(() {
            counter++;
          });
        },
        tooltip: 'This is floating action button',
        child: const Icon(Icons.add),
      ),
    );
  }
}

//These widgets are for demonstration

//Type stless for stateless widget
class DemonstrationStateless extends StatelessWidget {
  const DemonstrationStateless({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


//Type stful for stateful widget
class DemonstrationStateFul extends StatefulWidget {
  const DemonstrationStateFul({Key? key}) : super(key: key);
  @override
  _DemonstrationStateFulState createState() => _DemonstrationStateFulState();
}

class _DemonstrationStateFulState extends State<DemonstrationStateFul> {
  @override
  Widget build(BuildContext context) {
    return const Text('some text');
  }
}






