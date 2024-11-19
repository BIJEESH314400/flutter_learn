
import 'package:flutter/material.dart';

import 'function.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController  textAController = TextEditingController();
  final TextEditingController  textBController = TextEditingController();
  int sum =0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text('Test demo'),),

      body: Padding(
        padding: const EdgeInsets.only(top: 100,left: 20,right: 20),
        child: Column(
          children: [
            TextField(
              key: Key('textField_a'),
              controller: textAController,
            ),

            SizedBox(height: 20),

            TextField(
              key: Key('textField_b'),
              controller: textBController,
            ),

            SizedBox(height: 20),

            Text(sum.toString(),style: TextStyle(fontSize: 20),),

            SizedBox(height: 20),

            ElevatedButton(onPressed: (){

              int a = int.tryParse(textAController.text) ?? 0;
              int b = int.tryParse(textBController.text) ?? 0;

              setState(() {
                sum = add(a,b);
              });

            }, child: Text("Click Me"))

          ],
        ),
      ),
    ));
  }
}
