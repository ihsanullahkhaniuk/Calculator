import 'package:calculator/AppColors/colors.dart';
import 'package:flutter/material.dart';

// my name is khan,,,,,
class MYButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const MYButton({
    super.key,
    required this.title,
    this.color = const Color(0xffa5a5a5),
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
            ),
            child: Center(
                child: Text(
              title,
              style: headdingText,
            )),
          ),
        ),
      ),
    );
  }
}