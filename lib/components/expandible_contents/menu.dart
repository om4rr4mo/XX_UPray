import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 362,
        width: 360.5,
        decoration: BoxDecoration(
          color: const Color(0xFF401C48).withOpacity(0.7),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 28.0),
              Button(distance: 0.0, label: "Bussola", onTap: () {}),
              Button(distance: 16.0, label: "Tracker", onTap: () {}),
              Button(distance: 16.0, label: "Adhkar", onTap: () {}),
              Button(distance: 72.0, label: "Impostazioni", onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
