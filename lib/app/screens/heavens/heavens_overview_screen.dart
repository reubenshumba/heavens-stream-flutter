import 'package:flutter/material.dart';

import '../../models/heaven.dart';

class HeavensOverviewScreen extends StatelessWidget {
  List<Heaven> heavens;
  HeavensOverviewScreen({required this.heavens, super.key});


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Heavens"),),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3/2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
        itemBuilder: (context, index) => Container(),
        itemCount: heavens.length,
      ),
    );
  }
}
