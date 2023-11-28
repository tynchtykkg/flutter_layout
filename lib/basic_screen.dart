import 'package:flutter/material.dart';
import 'package:flutter_layout/immutable_widget.dart';
import 'package:flutter_layout/text_layout.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: const Text('Welcome to Flutter'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.edit),
          ),
        ],
      ),
      body: Column(
        children: [
          const AspectRatio(
            aspectRatio: 1,
            child: ImmutableWidget(),
          ),
          const TextLayout(),
          const Divider(),
          RichText(
            text: const TextSpan(
              text: 'Flutter text is ',
              style: TextStyle(fontSize: 22, color: Colors.black),
              children: <TextSpan>[
                TextSpan(
                  text: 'really ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                  children: [
                    TextSpan(
                      text: 'powerful',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.double,
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue,
          child: const Center(
            child: Text("I'm a Drawer!"),
          ),
        ),
      ),
    );
  }
}
