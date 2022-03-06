library neumorphic_loader;

import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class NeumorphicLoader extends StatelessWidget {
  const NeumorphicLoader({
    Key? key,
    this.loaderColor,
    this.borderColor,
    this.borderRadius,
    this.blurValue,
    required this.size,
  }) : super(key: key);
  final double size;
  final double? borderRadius;
  final Color? loaderColor;
  final Color? borderColor;
  final double? blurValue;
  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      height: size,
      width: size,
      borderRadius: BorderRadius.circular(borderRadius ?? 15),
      gradient: LinearGradient(
        colors: [
          Colors.white.withOpacity(0.40),
          Colors.white.withOpacity(0.10)
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderColor: borderColor ?? Colors.cyanAccent,
      borderGradient: LinearGradient(
        colors: [
          Colors.white.withOpacity(0.60),
          Colors.white.withOpacity(0.10),
          Colors.lightBlueAccent.withOpacity(0.05),
          Colors.lightBlueAccent.withOpacity(0.6)
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: const [0.0, 0.39, 0.40, 1.0],
      ),
      blur: blurValue ?? 5.0,
      borderWidth: 3,
      elevation: 5.0,
      isFrostedGlass: false,
      shadowColor: Colors.black.withOpacity(0.20),
      alignment: Alignment.center,
      frostedOpacity: 0.12,
      margin: const EdgeInsets.all(8.0),
      child: CircularProgressIndicator(
        color: loaderColor ?? Colors.blue,
      ),
    );
  }
}
