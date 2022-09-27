import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onpressed;
 final Color? clr;
  const CustomButton({
    super.key,
    required this.child,
    required this.onpressed,
     this.clr = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        height: 50.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
