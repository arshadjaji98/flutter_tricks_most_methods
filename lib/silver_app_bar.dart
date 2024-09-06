import 'package:flutter/material.dart';

class SilverAppBar extends StatefulWidget {
  const SilverAppBar({super.key});

  @override
  State<SilverAppBar> createState() => _SilverAppBarState();
}

class _SilverAppBarState extends State<SilverAppBar> {
  // List of containers as sample content
  final List<Widget> allContainers = List.generate(
    20,
    (index) => Container(
      margin: const EdgeInsets.all(10),
      height: 100,
      color: Colors.blueAccent.withOpacity((index + 1) * 0.05),
      child: Center(
          child: Text("Item $index",
              style: const TextStyle(fontSize: 25, color: Colors.black))),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Sliver App Bar',
                  style: TextStyle(color: Colors.white)),
              background: Image.asset('assets/intro 1.png', fit: BoxFit.cover),
            ),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return allContainers[index];
            }, childCount: allContainers.length),
          ),
        ],
      ),
    );
  }
}
