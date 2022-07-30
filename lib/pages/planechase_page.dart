import 'dart:math';

import 'package:flutter/material.dart';

import 'const/planesUrl.dart';

class PlaneChasePage extends StatefulWidget {
  const PlaneChasePage({Key? key}) : super(key: key);

  @override
  State<PlaneChasePage> createState() => _PlaneChasePageState();
}

class _PlaneChasePageState extends State<PlaneChasePage> {
  var rng = Random();
  var page = 1;

  @override
  void initState() {
    super.initState();
    page = rng.nextInt(40) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          page = rng.nextInt(20) + 1;
        });
      },
      child: Image.network(
        planes[page]!,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
