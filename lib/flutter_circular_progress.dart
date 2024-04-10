library flutter_circular_progress;

import 'package:flutter/material.dart';
import 'package:flutter_circular_progress/src/wdiget.dart';

/// A Calculator.
class CircularProgressInd {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
  Widget normalCircular() {
    return NormalCircularProgress();
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularProgressInd().normalCircular();
  }
}
