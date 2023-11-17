import 'package:flutter/material.dart';

class Mylisttile extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;
  final TextStyle textStyle;
  const Mylisttile({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    this.textStyle = const TextStyle(),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(text, style: textStyle),
        onTap: onTap,
      ),
    );
  }
}
