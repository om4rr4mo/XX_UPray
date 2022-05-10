import 'package:flutter/material.dart';
import 'package:flutter_application_1/static_files/variables.dart';

import '../components/expandible_container.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            ExpandibleContainer(
              onTap: () {
                setState(() {
                  prayerCollapsed = !prayerCollapsed;
                  if (!prayerCollapsed) {
                    calendarCollapsed = true;
                  }
                });
              },
              collapsed: prayerCollapsed,
              collapsedHeight: MediaQuery.of(context).size.height * 0.25,
              expandedHeight: MediaQuery.of(context).size.height * 0.50,
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
                  calendarCollapsed = !calendarCollapsed;
                  if (!calendarCollapsed) {
                    prayerCollapsed = true;
                  }
                });
              },
              collapsed: calendarCollapsed,
              collapsedHeight: MediaQuery.of(context).size.height * 0.10,
              expandedHeight: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width,
              bgColor: Color(0xFFF48FB1),
              collapsedContent: Container(),
              expandedContent: Container(),
            ),
          ]),
    );
  }
}
