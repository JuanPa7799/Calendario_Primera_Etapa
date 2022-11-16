import 'package:calendar_app_avanzada/model/event.dart';
import 'package:calendar_app_avanzada/page/event_editing_page.dart';
import 'package:calendar_app_avanzada/provider/event_provider.dart';
import 'package:calendar_app_avanzada/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EventViewingPage extends StatelessWidget {
  final Event event;

  const EventViewingPage({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: CloseButton(),
          actions: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () => Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => EventEditingPage(event: event),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => {
                Provider.of<EventProvider>(context, listen: false)
                    .deleteEvent(event),
                Navigator.pop(context),
              },
            ),
          ],
          //actions: buildViewingActions(context, event),
        ),
        body: ListView(
          padding: EdgeInsets.all(32),
          children: [
            //buildDateTime(event),
            SizedBox(height: 32),
            Text(
              event.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              event.description,
              style: TextStyle(color: Colors.white, fontSize: 18),
            )
          ],
        ),
      );
}


// !POR SI LO LLEGO A OCUPAR

// Widget buildDateTime(Event event) {
  //   return Column(
  //     children: [
  //       buildDate(event.isAllDay ? 'All-day' : 'From', event.from),
  //       if (!event.isAllDay) buildDate('To', event.to),
  //     ],
  //   );
  // }

  // Widget buildDate(String title, DateTime date) {

  // }

  // List<Widget> buildViewingActions(BuildContext context, Event event) {
  //   IconButton(
  //     icon: Icon(Icons.edit),
  //     onPressed: () => Navigator.of(context).pushReplacement(
  //       MaterialPageRoute(
  //         builder: (context) => EventEditingPage(event: event),
  //       ),
  //     ),
  //   );
  // IconButton(
  //     icon: Icon(Icons.delete),
  //     onPressed: () {
  //       final provider = Provider.of<EventProvider>(context, listen: false);

  //       provider.deleteEvent(event);
  //     });
  // }