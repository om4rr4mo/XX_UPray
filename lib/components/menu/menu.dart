import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/menu/button.dart';
import 'package:flutter_application_1/static_files/variables.dart';

class Menu extends StatefulWidget {
  final Widget fixedWidget;

  const Menu({Key? key, required this.fixedWidget}) : super(key: key);

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
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: viewportConstraints.minHeight),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  widget.fixedWidget,
                  Expanded(
                    child: Container(
                      height: 362.0,
                      width: 360.5,
                      decoration: BoxDecoration(
                        color: const Color(0xFF401C48).withOpacity(0.7),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(bigBorderRadius),
                            topRight: Radius.circular(bigBorderRadius)),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 28.0),
                          MenuButton(
                              distance: 0.0,
                              icon: Icons.compass_calibration,
                              label: "Bussola",
                              onTap: () {}),
                          MenuButton(
                              distance: 16.0,
                              icon: Icons.done,
                              label: "Tracker",
                              onTap: () {}),
                          MenuButton(
                              distance: 16.0,
                              icon: Icons.speaker,
                              label: "Adhkar",
                              onTap: () {}),
                          MenuButton(
                              distance: 72.0,
                              icon: Icons.settings,
                              label: "Impostazioni",
                              onTap: () {}),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
