import 'package:flutter/material.dart';
import 'package:flutter_application_1/static_files/variables.dart';

class MadhabExpanded extends StatefulWidget {
  const MadhabExpanded({Key? key}) : super(key: key);

  @override
  State<MadhabExpanded> createState() => _MadhabExpandedState();
}

class _MadhabExpandedState extends State<MadhabExpanded> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "seleziona il madhab",
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: MadhabEnum.values.map((MadhabEnum classType) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentMadhab = classType;
                      });
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: classType.name == currentMadhab.name ? null : Border.all(color: Color(0xFF8D4EAC), width: 2),
                        color: classType.name == currentMadhab.name ? Color(0xFF8D4EAC) : null,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: 400,
                      height: 40,
                      child: Text(classType.name),
                    ),
                  ),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
