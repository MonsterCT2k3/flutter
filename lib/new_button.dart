import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  const NewButton({
    super.key,
    required this.onPressed,
    required this.isPressed,
  });
  final void Function() onPressed;
  final bool isPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 50),
        height: 180,
        width: 180,
        decoration: BoxDecoration(
          color: Colors.deepPurple[300],
          //shape: BoxShape.circle,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
              color: isPressed ? Colors.grey.shade200 : Colors.grey.shade400),
          boxShadow: isPressed
              ? []
              : [
                  BoxShadow(
                    color: Colors.deepPurple.shade700,
                    offset: const Offset(4, 4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                  BoxShadow(
                    color: Colors.deepPurple.shade200,
                    offset: const Offset(-4, -4),
                    blurRadius: 15,
                    spreadRadius: 1,
                  ),
                ],
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple.shade200,
              Colors.deepPurple.shade400,
            ],
            stops: const [
              0.1,
              0.9,
            ],
          ),
        ),
        child: Icon(
          Icons.favorite,
          color: isPressed ? Colors.red.shade300 : Colors.red,
          size: 120,
        ),
      ),
    );
  }
}
