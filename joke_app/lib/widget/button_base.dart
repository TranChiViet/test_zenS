import 'package:flutter/material.dart';
import 'package:joke_app/style/txt_style.dart';

class ButtonBase extends StatelessWidget {
  final String text;
  final Function onTap;
  final bool? isFun;

  const ButtonBase(
      {super.key, required this.text, required this.onTap, this.isFun = true});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 35,
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: Container(
          alignment: Alignment.center,
          color: isFun == true ? Colors.blue : Colors.green,
          child: Text(
            text,
            style: TxtStyle.txt_14_white,
          ),
        ),
      ),
    );
  }
}
