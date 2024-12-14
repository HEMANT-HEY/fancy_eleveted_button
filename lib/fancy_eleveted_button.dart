library elevated_button_package;

import 'package:flutter/material.dart';

/// A customizable Elevated Button widget.
class CustomElevatedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final TextStyle? textStyle;

  const CustomElevatedButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.elevation,
    this.padding,
    this.borderRadius,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
       // onPrimary: textColor ?? Colors.white,
        elevation: elevation ?? 2.0,
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(8),
        ),
        textStyle: textStyle ??
            const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
      ),
      child: Text(label),
    );
  }
}
