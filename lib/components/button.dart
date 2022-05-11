import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final double distance;
  final Widget icon;
  final String label;
  final Function() onTap;

  const Button(
      {Key? key,
      required this.distance,
      required this.icon,
      required this.label,
      required this.onTap})
      : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: widget.distance),
      width: 324.5,
      decoration: BoxDecoration(
        color: const Color(0xFF401C48),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: widget.onTap,
            icon: widget.icon,
            color: const Color(0xFFD88090),
          ),
          TextButton(
            child: Text(
              widget.label,
              style: const TextStyle(
                color: Color(0xFFECD7D8),
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: widget.onTap,
          ),
        ],
      ),
    );
  }
}
