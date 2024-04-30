[![Buy Me A Coffee](https://img.shields.io/badge/Donate-Buy%20Me%20A%20Coffee-yellow.svg)](https://www.buymeacoffee.com/nuache)

# flutter_semi_circle

A new Semi Circle 

## Start

A Flutter package for iOS and Android for generating semi circles.

> Feedback and Pull Requests are most welcome!

## Installation

Add to pubspec.yaml.

```yaml
dependencies:
  ...
  flutter_semi_circle: ^1.0.0
```

<img src="https://github.com/NUACHE/flutter_semi_circle/assets/56569925/4ad092a1-26a8-41c9-967c-2eeadee51e0c" width="300">




## Usage Example

import circle_floating_button.dart

```dart
import 'package:flutter_semi_circle/flutter_semi_circle.dart';
```

## Samples

```dart
    FlutterSemiCircle(
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
```