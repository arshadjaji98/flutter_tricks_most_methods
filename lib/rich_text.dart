import 'package:flutter/material.dart';

class RichTextScreen extends StatefulWidget {
  const RichTextScreen({super.key});

  @override
  State<RichTextScreen> createState() => _RichTextScreenState();
}

class _RichTextScreenState extends State<RichTextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text("Rich Text", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            text: const TextSpan(
                style: TextStyle(fontSize: 20, color: Colors.black),
                children: <TextSpan>[
                  TextSpan(text: 'This is an example of '),
                  TextSpan(
                      text: 'Rich Text',
                      style: TextStyle(color: Colors.blue, fontSize: 22)),
                  TextSpan(text: ' Widget from'),
                  TextSpan(
                      text: ' Flutter',
                      style: TextStyle(color: Colors.blue, fontSize: 22)),
                ]),
          )
        ],
      ),
    );
  }
}
