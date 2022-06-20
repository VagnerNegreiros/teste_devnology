import 'package:flutter/material.dart';

class ElevatedButtonCustom extends StatelessWidget {
  final String text;
  final Color colorText;
  final Color colorButton;
  final IconData icon;
  final Color colorIcon;
  final VoidCallback onPressed;


  const ElevatedButtonCustom({Key? key, required this.text, required this.colorText,required this.colorButton, required this.icon, required this.colorIcon, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(const Size(140, 40),),
        backgroundColor: MaterialStateProperty.all(colorButton),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(text,
            style: TextStyle(fontSize: 12,
                fontWeight: FontWeight.w900,
            color: colorText),),
          const SizedBox(width: 18,),
          Icon(
            icon,
            color: colorIcon,
            size: 28.0,
          ),
        ],
      )
    );
  }
}
