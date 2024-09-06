import 'package:flutter/material.dart';

class VisibilityScrreen extends StatefulWidget {
  const VisibilityScrreen({super.key});

  @override
  State<VisibilityScrreen> createState() => _VisibilityScrreenState();
}

class _VisibilityScrreenState extends State<VisibilityScrreen> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text("Visibility", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            child: const Text("Button 1"),
          ),
          Visibility(
            visible: isVisible,
            child: Image.asset("assets/intro 1.png"),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isVisible = !isVisible;
              });
            },
            child: const Text("Button 2"),
          ),
        ],
      ),
    );
  }
}
