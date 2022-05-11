import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/expandible_contents/impostazioni/calculation_method/calculation_method_collapsed.dart';
import 'package:flutter_application_1/components/expandible_contents/impostazioni/calculation_method/calculation_method_expanded.dart';
import 'package:flutter_application_1/components/expandible_contents/impostazioni/language/language_collapsed.dart';
import 'package:flutter_application_1/components/expandible_contents/impostazioni/language/language_expanded.dart';
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
          //Container per la scelta del madhab
          GestureDetector(
            onTap: () {
              setState(() {
                madhabCollapsed = !madhabCollapsed;
                if (!madhabCollapsed) {
                  calculationMethodCollapsed = true;
                  languageCollapsed = true;
                }
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: madhabCollapsed
                  ? MediaQuery.of(context).size.height * 0.12
                  : MediaQuery.of(context).size.height * 0.21,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFDF888F),
                borderRadius: BorderRadius.circular(bigBorderRadius),
              ),
              padding: EdgeInsets.all(10),
              curve: Curves.fastOutSlowIn,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AnimatedCrossFade(
                    firstChild: Container(
                      width: 500,
                      alignment: Alignment.center,
                      child: Text("Madhab"),
                    ),
                    secondChild: Container(
                      width: 500,
                      alignment: Alignment.center,
                      child: Text("Seleziona il madhab"),
                    ),
                    crossFadeState: madhabCollapsed
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: Duration(milliseconds: 200),
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                    borderRadius: smallBorderRadius,
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
          ),
          SizedBox(
            height: 20,
          ),
          //Container per la scelta del metodo di calcolo
          GestureDetector(
            onTap: () {
              setState(() {
                calculationMethodCollapsed = !calculationMethodCollapsed;
                if (!calculationMethodCollapsed) {
                  madhabCollapsed = true;
                  languageCollapsed = true;
                }
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: calculationMethodCollapsed
                  ? MediaQuery.of(context).size.height * 0.12
                  : MediaQuery.of(context).size.height * 0.31,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFDF888F),
                borderRadius: BorderRadius.circular(bigBorderRadius),
              ),
              padding: EdgeInsets.all(10),
              curve: Curves.fastOutSlowIn,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AnimatedCrossFade(
                    firstChild: Container(
                      width: 500,
                      alignment: Alignment.center,
                      child: Text("Metodo di calcolo"),
                    ),
                    secondChild: Container(
                      width: 500,
                      alignment: Alignment.center,
                      child: Text("Seleziona il metodo di calcolo"),
                    ),
                    crossFadeState: madhabCollapsed
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: Duration(milliseconds: 200),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ExpandibleContainer(
                    onTap: () {
                      setState(() {
                        calculationMethodCollapsed =
                            !calculationMethodCollapsed;
                        if (!calculationMethodCollapsed) {
                          madhabCollapsed = true;
                          languageCollapsed = true;
                        }
                      });
                    },
                    borderRadius: smallBorderRadius,
                    collapsed: calculationMethodCollapsed,
                    collapsedHeight: MediaQuery.of(context).size.height * 0.06,
                    expandedHeight: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width,
                    bgColor: Color(0xFFF9E8E0),
                    collapsedContent: CalcMethodCollapsed(),
                    expandedContent: CalcMethodExpanded(),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //Container per la scelta della lingua
          GestureDetector(
            onTap: () {
              setState(() {
                languageCollapsed = !languageCollapsed;
                if (!languageCollapsed) {
                  madhabCollapsed = true;
                  calculationMethodCollapsed = true;
                }
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              height: languageCollapsed
                  ? MediaQuery.of(context).size.height * 0.12
                  : MediaQuery.of(context).size.height * 0.31,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFFDF888F),
                borderRadius: BorderRadius.circular(bigBorderRadius),
              ),
              padding: EdgeInsets.all(10),
              curve: Curves.fastOutSlowIn,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AnimatedCrossFade(
                    firstChild: Container(
                      width: 500,
                      alignment: Alignment.center,
                      child: Text("Lingua"),
                    ),
                    secondChild: Container(
                      width: 500,
                      alignment: Alignment.center,
                      child: Text("Seleziona la lingua"),
                    ),
                    crossFadeState: madhabCollapsed
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: Duration(milliseconds: 200),
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                    borderRadius: smallBorderRadius,
                    collapsed: languageCollapsed,
                    collapsedHeight: MediaQuery.of(context).size.height * 0.06,
                    expandedHeight: MediaQuery.of(context).size.height * 0.25,
                    width: MediaQuery.of(context).size.width,
                    bgColor: Color(0xFFF9E8E0),
                    collapsedContent: LanguageCollapsed(),
                    expandedContent: LanguageExpanded(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
