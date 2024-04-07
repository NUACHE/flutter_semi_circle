import 'package:flutter/material.dart';
import 'package:flutter_semi_circle/flutter_semi_circle.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: FlutterSemiCircle(
            height: 180,
            width: 180,
            thickness: 25,
            backgroundColor: Colors.blue.shade100,
            foregroundColor: const Color.fromARGB(255, 22, 64, 98),
            totalValue: 100,
            currentValue: 75,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '\$100.00',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Spent',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
