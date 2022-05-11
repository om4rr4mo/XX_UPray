import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/expandible_contents/impostazioni/madhab/madhab_expanded.dart';
import 'package:flutter_application_1/static_files/variables.dart';

import '../components/expandible_container.dart';
import '../components/expandible_contents/impostazioni/madhab/madhab_collapsed.dart';

class Impostazioni extends StatefulWidget {
  const Impostazioni({Key? key}) : super(key: key);

  @override
  State<Impostazioni> createState() => _ImpostazioniState();
}

class _ImpostazioniState extends State<Impostazioni> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          //Container per gli orari della preghiera
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: madhabCollapsed ? MediaQuery.of(context).size.height * 0.11 : MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color(0xFFDF888F),
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            padding: EdgeInsets.all(10),
            curve: Curves.fastOutSlowIn,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Madhab"),
                ExpandibleContainer(
                  onTap: () {
                    setState(() {
                      madhabCollapsed = !madhabCollapsed;
                      if (!madhabCollapsed) {
                        calculationMethodCollapsed = true;
                        languageCollapsed = true;
                      }
                    });
                  },
                  collapsed: madhabCollapsed,
                  collapsedHeight: MediaQuery.of(context).size.height * 0.06,
                  expandedHeight: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width,
                  bgColor: Color(0xFFF9E8E0),
                  collapsedContent: MadhabCollapsed(),
                  expandedContent: MadhabExpanded(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //Container per il calendario
          ExpandibleContainer(
            onTap: () {
              setState(() {
                calculationMethodCollapsed = !calculationMethodCollapsed;
                if (!calculationMethodCollapsed) {
                  madhabCollapsed = true;
                  languageCollapsed = true;
                }
              });
            },
            collapsed: calculationMethodCollapsed,
            collapsedHeight: MediaQuery.of(context).size.height * 0.15,
            expandedHeight: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.width,
            bgColor: Color(0xFFF48FB1),
            collapsedContent: Container(),
            expandedContent: Container(),
          ),
          SizedBox(
            height: 20,
          ),
          //Container per il calendario
          ExpandibleContainer(
            onTap: () {
              setState(() {
                languageCollapsed = !languageCollapsed;
                if (!languageCollapsed) {
                  madhabCollapsed = true;
                  calculationMethodCollapsed = true;
                }
              });
            },
            collapsed: languageCollapsed,
            collapsedHeight: MediaQuery.of(context).size.height * 0.15,
            expandedHeight: MediaQuery.of(context).size.height * 0.30,
            width: MediaQuery.of(context).size.width,
            bgColor: Color(0xFFF48FB1),
            collapsedContent: Container(),
            expandedContent: Container(),
          ),
        ],
      ),
    );
  }
}
