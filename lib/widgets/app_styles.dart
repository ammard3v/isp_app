import 'package:flutter/material.dart';

class AppStyles {
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      Color.fromARGB(214, 49, 68, 161),
      Color.fromARGB(214, 244, 47, 40),
    ],
  );
}

class GradientText extends StatelessWidget {
  final String text;
  final Gradient gradient;
  final TextStyle? style;

  const GradientText(
    this.text, {
    super.key,
    this.style,
    this.gradient = AppStyles.primaryGradient,
  });

  @override
  Widget build(BuildContext context) {
    final effectiveStyle = style ?? const TextStyle(fontSize: 20);

    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      blendMode: BlendMode.srcIn,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: effectiveStyle.copyWith(color: Colors.white),
      ),
    );
  }
}

class GradientIcon extends StatelessWidget {
  final IconData icon;
  final double size;

  const GradientIcon({
    super.key,
    required this.icon,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => AppStyles.primaryGradient.createShader(
        Rect.fromLTWH(0, 0, size, size),
      ),
      blendMode: BlendMode.srcIn,
      child: Icon(
        icon,
        size: size,
        color: Colors.white, // acts as the mask for the gradient
      ),
    );
  }
}

class CommonContainer extends StatelessWidget {
  const CommonContainer({super.key, this.height, this.width, this.child});
  final double? height;
  final double? width;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
          child: child,
        ),
      ),
    );
  }
}
