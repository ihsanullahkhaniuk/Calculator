import 'package:calculator/AppColors/colors.dart';
import 'package:flutter/material.dart';

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
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
          ),
          child: InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: onPress,
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 70,
              width: 70,
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
      ),
    );
  }
}
