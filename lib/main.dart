import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/controller.dart';

void main() => runApp(GetMaterialApp(
      home: MyHomePage(
        title: 'Flutter Project - Using Getx',
      ),
      debugShowCheckedModeBanner: false,
    ));

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                controller.count.value.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: controller.increment,
          tooltip: 'Increment',
          child: Icon(Icons.add),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
