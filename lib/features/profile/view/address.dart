import 'package:flutter/material.dart';

class address extends StatelessWidget {
  const address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Address'),
        centerTitle: true,
      ),
      body: Column(
        children: [Expanded(child: Image.asset('assets/map.PNG'))],
      ),
    );
  }
}
