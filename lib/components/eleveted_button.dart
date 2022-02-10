import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.child,
    required this.primaryColorHexCode,
    required this.onPressed,
  }) : super(key: key);

  final Widget child;
  final int primaryColorHexCode;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.grey[600],
        primary: Color(primaryColorHexCode),
        minimumSize: const Size(200, 50),
        elevation: 7.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
      child: child,
    );
  }
}
