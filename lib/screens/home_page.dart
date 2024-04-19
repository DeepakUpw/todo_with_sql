import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<StatefulWidget> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          foregroundColor: Colors.white,
          title: const Text("Your Task"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.add_outlined,
          ),
        ),
        body: SafeArea(
            child: ListView.builder(
                itemCount: 23,
                itemBuilder: (ctx, index) {
                  return InkWell(
                      onTap: () {
                        // update the task on Tap
                      },
                      child: ListTile(
                        title: Text(
                          "Title Of ${index + 1} Task",
                          style: TextStyle(fontSize: 18),
                        ),
                        subtitle: Text(
                            "Over all Description Of Item ${index + 1} Task"),
                        style: ListTileStyle.drawer,
                      ));
                })));
  }
}
