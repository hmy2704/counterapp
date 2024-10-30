import 'package:flutter/material.dart';

class Counter_View extends StatefulWidget {
  const Counter_View({super.key});

  @override
  State<Counter_View> createState() => _Counter_ViewState();
}

class _Counter_ViewState extends State<Counter_View> {
  int counter=0;

  @override
  void initState() {
    counter=9;
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  void incrementCounter(){
    setState(() {
      counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    final theme= Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Counter_View')),
      body: Center(
        child: Column(
          children: [
            Text(
              'Counter: $counter',
            style:theme.textTheme.titleLarge ,
            ),
            FilledButton(
              onPressed: (){
                incrementCounter();
              },
              child:const  Text('Increment'),
            )
          ],
        )
        
      ),
      );
  }
}