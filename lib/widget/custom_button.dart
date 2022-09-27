import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonLable;
  final VoidCallback onpressed;
  const CustomButton({
    super.key,
    required this.buttonLable,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpressed,
      child: Container(
        height: 50.0,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(
            buttonLable,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
