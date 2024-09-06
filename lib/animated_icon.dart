import 'package:flutter/material.dart';

class AnimatedIconScreen extends StatefulWidget {
  const AnimatedIconScreen({super.key});

  @override
  State<AnimatedIconScreen> createState() => _AnimatedIconScreenState();
}

class _AnimatedIconScreenState extends State<AnimatedIconScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurple),
      body: Padding(
        padding:  const EdgeInsets.all(8),
        child: Center(
          child: IconButton(
              onPressed: () {
                if (_controller.isCompleted) {
                  _controller.reverse();
                } else {
                  _controller.forward();
                }
              },
              icon: AnimatedIcon(
                  color: Colors.orangeAccent,
                  icon: AnimatedIcons.menu_home,
                  progress: _controller),
              iconSize: 100),
        ),
      ),
    );
  }
}
