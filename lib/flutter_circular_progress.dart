library flutter_circular_progress;

import 'dart:async';
import 'package:flutter/material.dart';

class CircularProgressInd {
  Widget normalCircular(
      {bool? isSpining,
      bool? hasSpinReverse,
      double? value,
      double? valueWidth,
      Color? secondaryColor,
      double? secondaryWidth,
      double? width,
      Duration? spinDuration,
      Color? valueColor,
      BoxShape? backgroundShape,
      Border? backgroundBorder,
      EdgeInsets? padding,
      EdgeInsets? margin,
      double? backgroundRadius,
      Color? backgroundColor,
      int? rotate,
      double? height}) {
    return NormalCircularProgressInd(
      height: height,
      isSpining: isSpining,
      secondaryColor: secondaryColor,
      secondaryWidth: secondaryWidth,
      value: value,
      valueColor: valueColor,
      valueWidth: valueWidth,
      spinDuration: spinDuration,
      width: width,
      hasSpinReverse: hasSpinReverse,
      backgrounShape: backgroundShape,
      backgroundBorder: backgroundBorder,
      backgroundColor: backgroundColor,
      backgroundRadius: backgroundRadius,
      margin: margin,
      padding: padding,
      rotate: rotate,
    );
  }
}

class NormalCircularProgressInd extends StatefulWidget {
  const NormalCircularProgressInd(
      {this.isSpining = true,
      this.valueColor,
      this.valueWidth,
      this.secondaryColor = Colors.transparent,
      this.secondaryWidth,
      this.value,
      this.height,
      this.hasSpinReverse,
      this.width,
      this.spinDuration,
      this.backgrounShape,
      this.backgroundColor,
      this.backgroundRadius,
      this.margin,
      this.rotate,
      this.padding,
      this.backgroundBorder,
      super.key});
  final bool? isSpining;
  final bool? hasSpinReverse;
  final double? value;
  final Color? valueColor;
  final double? valueWidth;
  final Color? secondaryColor;
  final double? secondaryWidth;
  final double? backgroundRadius;
  final Color? backgroundColor;
  final BoxShape? backgrounShape;
  final Border? backgroundBorder;
  final double? width;
  final double? height;
  final Duration? spinDuration;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final int? rotate;

  @override
  State<NormalCircularProgressInd> createState() =>
      _NormalCircularProgressIndState();
}

class _NormalCircularProgressIndState extends State<NormalCircularProgressInd> {
  double turns = 0;
  Timer? _timer;
  final double nextTurn = 1;

  @override
  void initState() {
    if (widget.isSpining == true) {
      Timer(Duration.zero, () {
        turns += nextTurn;
        setState(() {});
      });
      startSpin();
    }
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void startSpin() {
    Timer.periodic(widget.spinDuration ?? Duration(seconds: 1), (timer) {
      _timer = timer;
      if (widget.hasSpinReverse == true) {
        if (turns > 0) {
          turns -= nextTurn;
        } else {
          turns += nextTurn;
        }
      } else {
        turns += nextTurn;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    double? val;
    val = widget.value;
    if (val == null && widget.isSpining == true) {
      val = .5;
    }
    return RotatedBox(
      quarterTurns: widget.rotate ?? 0,
      child: Container(
        margin: widget.margin,
        padding: widget.padding,
        decoration: BoxDecoration(
            shape: widget.backgrounShape ?? BoxShape.circle,
            color: widget.backgroundColor ?? Colors.transparent,
            border: widget.backgroundBorder,
            borderRadius: widget.backgroundRadius != null
                ? BorderRadius.circular(widget.backgroundRadius ?? 10)
                : null),
        width: widget.width ?? 50,
        height: widget.height ?? 50,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CircularProgressIndicator(
              strokeAlign: BorderSide.strokeAlignCenter,
              strokeWidth: widget.secondaryWidth ?? 0,
              value: widget.secondaryWidth == null ? 0 : 1,
              valueColor: AlwaysStoppedAnimation(widget.secondaryColor),
            ),
            AnimatedRotation(
              duration: widget.spinDuration ?? Duration(seconds: 1),
              turns: widget.isSpining == true ? turns : 0,
              child: CircularProgressIndicator(
                strokeCap: StrokeCap.round,
                strokeAlign: BorderSide.strokeAlignCenter,
                strokeWidth: widget.valueWidth ?? 3,
                value: val,
                valueColor:
                    AlwaysStoppedAnimation(widget.valueColor ?? Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
