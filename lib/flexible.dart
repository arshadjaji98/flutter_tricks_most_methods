import 'package:flutter/material.dart';

class FlexibleScreen extends StatefulWidget {
  const FlexibleScreen({super.key});

  @override
  State<FlexibleScreen> createState() => _FlexibleScreenState();
}

class _FlexibleScreenState extends State<FlexibleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 4,
            child: Container(color: Colors.blue),
          ),
          Flexible(
            flex: 4,
            child: Container(color: Colors.yellow),
          ),
          Flexible(
            flex: 4,
            child: Container(color: Colors.purple),
          ),
        ],
      ),
    );
  }
}
