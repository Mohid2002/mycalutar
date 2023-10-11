import 'package:mycaluter/constants.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color colorr;
  final VoidCallback onPress;
  const MyButton({super.key,
    required this.title,
    this.colorr= const Color(0xffa5a5a5),
    required this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: InkWell(
          onTap: onPress,
          child: Container(
            child: Center(
                child: Text(title,
                style: TextStyle(
                  fontSize: 18,
                  color: WhiteColor,
                ),)
            ),
            height: 80,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.circular(120),
              color: colorr,
            ),
          ),
        ),
      ),
    );
  }
}
