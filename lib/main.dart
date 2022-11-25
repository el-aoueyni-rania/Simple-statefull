import 'package:flutter/material.dart';

void main() {
  runApp(IncrementWidget());
}

class IncrementWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return (_State());
  }
}
class _State extends State<IncrementWidget>{
  var _count = 0;
  @override
  Widget build(BuildContext context) {

    return(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'InteractiveApp',
      theme: ThemeData(primaryColor: Colors.blueGrey),
      home: Scaffold(
        appBar: AppBar(title: Text('InteractiveApp')),
        body: Center(
          child : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$_count' , style: TextStyle(fontSize: 20)),
              ElevatedButton(onPressed: _setCount, child: Text('Increment' , style: TextStyle(fontSize: 20)))
            ],
          ),
        )
      ),
    )
    );
  }


  void _setCount() {
    setState(() {
      _count++;
    });
  }
}