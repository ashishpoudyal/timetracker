import 'package:flutter/material.dart';

class CustonElevatedButton extends StatelessWidget {
  final Widget child;
  final double height;
  final Color color;
  final VoidCallback onPressed;
  const CustonElevatedButton({
    Key? key,
    required this.color,
    required this.onPressed,
    required this.child,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
          ),
          onPressed: onPressed,
          child: child),
    );
  }
}
