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
    //page = rng.nextInt(40) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          //page = rng.nextInt(20) + 1;
          if (page < planes.length) {
            page += 1;
            print(page);
          } else {
            page = 1;
          }
        });
      },
      child: Container(
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              planes[page]!,
              fit: BoxFit.fitHeight,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      planesText[page] ?? '',
                      overflow: TextOverflow.clip,
                      style: TextStyle(fontSize: 12, color: Colors.black87),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      planesChaosText[page] ?? '',
                      overflow: TextOverflow.clip,
                      style: TextStyle(fontSize: 12, color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
